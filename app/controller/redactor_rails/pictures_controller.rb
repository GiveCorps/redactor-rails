class RedactorRails::PicturesController < ApplicationController
  before_action :ensure_redactor_asset_owner_present, only: [:create]

  def index
    owner = redactor_asset_owner ||  OpenStruct.new(id: 0)
    @pictures = RedactorRails.picture_model.find_by_assetable(owner)
    render :json => @pictures.to_json
  end

  def create
    @picture = RedactorRails.picture_model.new

    file = params[:file]
    @picture.data = RedactorRails::Http.normalize_param(file, request)

    @picture.assetable = redactor_asset_owner

    if @picture.save
      render :plain => { :filelink => @picture.url }.to_json
    else
      render :nothing => true
    end
  end

  private

  def ensure_redactor_asset_owner_present
    render :nothing => true, :status => :unauthorized if redactor_asset_owner.nil?
  end
end

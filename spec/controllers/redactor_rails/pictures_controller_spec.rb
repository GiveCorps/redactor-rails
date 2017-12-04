require 'rails_helper'

describe RedactorRails::PicturesController  do
  let(:photo_file) { Rack::Test::UploadedFile.new("spec/fixtures/project_photo.jpg", "image/jpeg") }
  let(:assetable) { FactoryBot.create(:admin) }

  describe "POST create" do
    before { controller.stub(:asset_owner).and_return(assetable) }
    subject { post :create, file: photo_file }

    context "when asset_owner present" do

      it "should return 200 response" do
        subject
        expect(response.status).to eq 200
      end

      context "when there is a validation error" do
        it "should return 200 response" do
          subject
          expect(response.status).to eq 200
        end
      end
    end

    context "when asset_owner not present" do
      let(:assetable) { }

      it "should return 401 response" do
        subject
        expect(response.status).to eq 401
      end
    end
  end

end

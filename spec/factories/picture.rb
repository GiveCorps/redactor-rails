FactoryBot.define do
  factory :picture, class: RedactorRails::Picture do
    assetable { FactoryBot.create(:admin) }
  end
end

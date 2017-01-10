FactoryGirl.define do
  factory :artifact do
    name "MyString"
    file_type "png"
    corpus "MyString"
    catalog_number 1
    myfile { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'fixtures', 'myfiles', 'myfile.jpg')) }

  end
end

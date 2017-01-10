require 'spec_helper'
require 'carrierwave/test/matchers'

describe ArtifactUploader do
  include CarrierWave::Test::Matchers
  artifact = FactoryGirl.create(:artifact)

  path_to_file = artifact.myfile.file.path
  # Enable images processing before executing the examples
  before(:all) do
    ArtifactUploader.enable_processing = true
  end

  # Create a new uploader. The model is mocked as the uploading and resizing images does not depend on the model creation.
  before(:each) do
    @uploader = ArtifactUploader.new(Artifact, :myfile)
    @uploader.store!(File.open(path_to_file))
  end

  # Disable images processing after executing the examples
  after(:all) do
    ArtifactUploader.enable_processing = false
  end



  context 'the thumb version' do
    it "should scale down a landscape image to be exactly 64 by 64 pixels" do
      expect(@uploader.thumb).to be_no_larger_than(64, 64)
    end
  end

  context 'the small version' do
    it "should scale down a landscape image to fit within 200 by 200 pixels" do
      expect(@uploader.small).to be_no_larger_than(200, 200)
    end
  end

  it "should make the image readable to the owner and not executable" do
    expect(@uploader).to have_permissions(0644)
  end

  it "should be the correct format" do
    expect(@uploader).to be_format('JPEG')
  end


end

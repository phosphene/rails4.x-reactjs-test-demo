require 'rails_helper'

RSpec.describe Artifact, type: :model do
  it "has a valid factory" do
    expect(create(:artifact)).to be_valid
  end

  it "has a valid file field" do
    artifact = create(:artifact)
    expect(artifact.myfile.file.path).not_to be_empty
  end


  it "has an id field" do
    artifact = create(:artifact)
    expect(artifact.id).not_to be_nil
  end





end

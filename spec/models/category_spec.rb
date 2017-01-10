require 'rails_helper'

RSpec.describe Category, type: :model do

  it "has a valid factory" do
    expect(create(:category, :parent)).to be_valid
  end

  it "has factory that builds a valid parent category with no parent_id" do
    expect(create(:category, :parent).parent_id).to be_nil
  end

  it "builds a valid child category when passed a valid parent_id" do
    my_parent = create(:category, :parent)
    expect(create(:category, :child, parent_id: my_parent.parent_id)).to be_valid
  end

end

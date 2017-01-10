FactoryGirl.define do
  factory :category do

    trait :parent do
    name "Compounds"
    parent_id nil
    end

    trait :child do
    name "Tryptophan"
    end
  end

end

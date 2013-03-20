require 'factory_girl'


FactoryGirl.define do

  sequence(:tag_name)      { |n| "Tag #{n}" }
  sequence(:category_name) { |n| "Category #{n}" }
  sequence(:unique_url)    { |n| "Url #{n}" }

  factory :article do
    title         'Man Lands on Jupiter'
    description   'Brayden Cleary, the most awesome astronaut ever, just landed on Jupiter.  After starting a company that makes everything awesome, he funded the worlds frist private space mission to Jupiter.  Wow, what an awesome day.'
    url           { generate(:unique_url) }
    category
  end

  factory :tag do 
    name { generate(:tag_name) }
  end

  factory :category do
    name { generate(:category_name) }
  end

  factory :category_with_articles, :parent => :category do
    after(:create) do |category|
      3.times { create(:article, :category => category) }
    end
  end


end

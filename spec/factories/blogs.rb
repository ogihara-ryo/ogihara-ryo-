FactoryGirl.define do
  factory :blog do
    sequence(:title) { |i| "title_#{i}" }
    sequence(:body) { |i| "body_#{i}" }
  end
end

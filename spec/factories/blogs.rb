# == Schema Information
#
# Table name: blogs
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :blog do
    sequence(:title) { |i| "title_#{i}" }
    sequence(:body) { |i| "body_#{i}" }
  end
end

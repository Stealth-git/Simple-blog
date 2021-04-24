FactoryBot.define do
  factory :comment do
    author { "Mike" }
    # body { "something blabla" }
    sequence(:body) { |n| "comment body #{n}" }
  end
end
FactoryBot.define do
  factory :task do
    # association :user
    title { Faker::Name.name }
  end
end
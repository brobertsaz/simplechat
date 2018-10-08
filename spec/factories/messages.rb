FactoryBot.define do
  factory :message do
    user
    conversation
    content { Faker::DrWho.quote }
  end
end

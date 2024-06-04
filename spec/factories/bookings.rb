FactoryBot.define do
  factory :booking do
    association :user
    association :room
    check_in { Date.today }
    check_out { Date.today + 1 }
    status { 0 }
  end
end
FactoryBot.define do
  factory :room do
    association :hotel
    room_number { "101" }
    room_type { "deluxe" }
    price { 200.0 }
    status { 0 }
  end
end

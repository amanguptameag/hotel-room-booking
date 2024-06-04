FactoryBot.define do
  factory :user do
    name { "Aman" }
    username { "aman" }
    password { "password" }
    phone_number { "1234567890" }
    email { "aman@gmail.com" }
    status { 0 }
  end
end
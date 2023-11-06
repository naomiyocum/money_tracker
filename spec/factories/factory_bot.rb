FactoryBot.define do
  factory :asset do
    label { ["Roth IRA", "401K", "Crypto"].sample }
    amount { Faker::Number.between(from: 15000, to: 33333) }
  end

  factory :debt do
    label { ["School Loans", "Chase Freedom Unlimited CC", "Citi Costco CC", "Car Loan"].sample }
    amount { Faker::Number.between(from: 1, to: 300) }
  end

  factory :expense do
    label { ["Gas", "HBO Max Subscription", "Groceries", "Netflix Subscription"].sample }
    amount { Faker::Number.between(from: 1, to: 300) }
  end

  factory :income do
    label { ["W2", "Freelancing Gig","Lyft Earnings"].sample }
    amount { Faker::Number.between(from: 1500, to: 8000) }
  end

  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email(name: first_name) }
    password { 'test1234' }
    password_confirmation { 'test1234' }
  end
end
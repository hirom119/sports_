FactoryBot.define do
  factory :user do
    team         { 'チームA' }
    email        { 'kkk@gmail.com' }
    password     { '00000q' }
    password_confirmation { password }
    profile      { 'test' }
    perfomance   { 'test' }
  end
end

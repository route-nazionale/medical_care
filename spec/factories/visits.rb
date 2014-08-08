# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :visit do
    human nil
    location nil
    date ""
    hour "2014-07-16 18:23:54"
    doctor 1
    anamnesi "MyText"
    diagnosi "MyText"
  end
end

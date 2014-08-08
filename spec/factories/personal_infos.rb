# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :personal_info do
    tessera_sanitaria "MyString"
    annotazioni_mediche "MyString"
    human nil
  end
end

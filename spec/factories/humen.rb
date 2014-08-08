# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :human do
    cu "MyString"
    cucode 1
    nome "MyString"
    cognome "MyString"
    quartiere 1
    contrada 1
    codicecensimento "MyString"
    idgruppo "MyString"
    idunita "MyString"
    realcredit false
    intolleranzealimentari "MyString"
    allergiealimentari "MyString"
    allergiefarmaci "MyString"
    fisiche false
    lis false
    psichiche false
    sensoriali false
    patologie "MyString"
  end
end

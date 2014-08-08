require 'rails_helper'

RSpec.describe "humen/index", :type => :view do
  before(:each) do
    assign(:humen, [
      Human.create!(
        :cu => "Cu",
        :cucode => 1,
        :nome => "Nome",
        :cognome => "Cognome",
        :quartiere => 2,
        :contrada => 3,
        :codicecensimento => "Codicecensimento",
        :idgruppo => "Idgruppo",
        :idunita => "Idunita",
        :realcredit => false,
        :intolleranzealimentari => "Intolleranzealimentari",
        :allergiealimentari => "Allergiealimentari",
        :allergiefarmaci => "Allergiefarmaci",
        :fisiche => false,
        :lis => false,
        :psichiche => false,
        :sensoriali => false,
        :patologie => "Patologie"
      ),
      Human.create!(
        :cu => "Cu",
        :cucode => 1,
        :nome => "Nome",
        :cognome => "Cognome",
        :quartiere => 2,
        :contrada => 3,
        :codicecensimento => "Codicecensimento",
        :idgruppo => "Idgruppo",
        :idunita => "Idunita",
        :realcredit => false,
        :intolleranzealimentari => "Intolleranzealimentari",
        :allergiealimentari => "Allergiealimentari",
        :allergiefarmaci => "Allergiefarmaci",
        :fisiche => false,
        :lis => false,
        :psichiche => false,
        :sensoriali => false,
        :patologie => "Patologie"
      )
    ])
  end

  it "renders a list of humen" do
    render
    assert_select "tr>td", :text => "Cu".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Cognome".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Codicecensimento".to_s, :count => 2
    assert_select "tr>td", :text => "Idgruppo".to_s, :count => 2
    assert_select "tr>td", :text => "Idunita".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Intolleranzealimentari".to_s, :count => 2
    assert_select "tr>td", :text => "Allergiealimentari".to_s, :count => 2
    assert_select "tr>td", :text => "Allergiefarmaci".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Patologie".to_s, :count => 2
  end
end

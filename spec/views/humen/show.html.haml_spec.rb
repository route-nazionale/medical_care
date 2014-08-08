require 'rails_helper'

RSpec.describe "humen/show", :type => :view do
  before(:each) do
    @human = assign(:human, Human.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Cu/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Cognome/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Codicecensimento/)
    expect(rendered).to match(/Idgruppo/)
    expect(rendered).to match(/Idunita/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Intolleranzealimentari/)
    expect(rendered).to match(/Allergiealimentari/)
    expect(rendered).to match(/Allergiefarmaci/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Patologie/)
  end
end

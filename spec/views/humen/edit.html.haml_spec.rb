require 'rails_helper'

RSpec.describe "humen/edit", :type => :view do
  before(:each) do
    @human = assign(:human, Human.create!(
      :cu => "MyString",
      :cucode => 1,
      :nome => "MyString",
      :cognome => "MyString",
      :quartiere => 1,
      :contrada => 1,
      :codicecensimento => "MyString",
      :idgruppo => "MyString",
      :idunita => "MyString",
      :realcredit => false,
      :intolleranzealimentari => "MyString",
      :allergiealimentari => "MyString",
      :allergiefarmaci => "MyString",
      :fisiche => false,
      :lis => false,
      :psichiche => false,
      :sensoriali => false,
      :patologie => "MyString"
    ))
  end

  it "renders the edit human form" do
    render

    assert_select "form[action=?][method=?]", human_path(@human), "post" do

      assert_select "input#human_cu[name=?]", "human[cu]"

      assert_select "input#human_cucode[name=?]", "human[cucode]"

      assert_select "input#human_nome[name=?]", "human[nome]"

      assert_select "input#human_cognome[name=?]", "human[cognome]"

      assert_select "input#human_quartiere[name=?]", "human[quartiere]"

      assert_select "input#human_contrada[name=?]", "human[contrada]"

      assert_select "input#human_codicecensimento[name=?]", "human[codicecensimento]"

      assert_select "input#human_idgruppo[name=?]", "human[idgruppo]"

      assert_select "input#human_idunita[name=?]", "human[idunita]"

      assert_select "input#human_realcredit[name=?]", "human[realcredit]"

      assert_select "input#human_intolleranzealimentari[name=?]", "human[intolleranzealimentari]"

      assert_select "input#human_allergiealimentari[name=?]", "human[allergiealimentari]"

      assert_select "input#human_allergiefarmaci[name=?]", "human[allergiefarmaci]"

      assert_select "input#human_fisiche[name=?]", "human[fisiche]"

      assert_select "input#human_lis[name=?]", "human[lis]"

      assert_select "input#human_psichiche[name=?]", "human[psichiche]"

      assert_select "input#human_sensoriali[name=?]", "human[sensoriali]"

      assert_select "input#human_patologie[name=?]", "human[patologie]"
    end
  end
end

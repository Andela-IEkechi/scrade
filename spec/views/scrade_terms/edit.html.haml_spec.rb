require 'rails_helper'

RSpec.describe "scrade_terms/edit", type: :view do
  before(:each) do
    @scrade_term = assign(:scrade_term, ScradeTerm.create!(
      :scrade_session => nil,
      :title => "MyString"
    ))
  end

  it "renders the edit scrade_term form" do
    render

    assert_select "form[action=?][method=?]", scrade_term_path(@scrade_term), "post" do

      assert_select "input#scrade_term_scrade_session_id[name=?]", "scrade_term[scrade_session_id]"

      assert_select "input#scrade_term_title[name=?]", "scrade_term[title]"
    end
  end
end

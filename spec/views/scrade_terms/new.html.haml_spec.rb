require 'rails_helper'

RSpec.describe "scrade_terms/new", type: :view do
  before(:each) do
    assign(:scrade_term, ScradeTerm.new(
      :scrade_session => nil,
      :title => "MyString"
    ))
  end

  it "renders new scrade_term form" do
    render

    assert_select "form[action=?][method=?]", scrade_terms_path, "post" do

      assert_select "input#scrade_term_scrade_session_id[name=?]", "scrade_term[scrade_session_id]"

      assert_select "input#scrade_term_title[name=?]", "scrade_term[title]"
    end
  end
end

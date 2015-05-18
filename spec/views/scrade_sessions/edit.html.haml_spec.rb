require 'rails_helper'

RSpec.describe "scrade_sessions/edit", type: :view do
  before(:each) do
    @scrade_session = assign(:scrade_session, ScradeSession.create!(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit scrade_session form" do
    render

    assert_select "form[action=?][method=?]", scrade_session_path(@scrade_session), "post" do

      assert_select "input#scrade_session_title[name=?]", "scrade_session[title]"

      assert_select "textarea#scrade_session_description[name=?]", "scrade_session[description]"
    end
  end
end

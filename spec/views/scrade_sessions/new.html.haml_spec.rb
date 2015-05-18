require 'rails_helper'

RSpec.describe "scrade_sessions/new", type: :view do
  before(:each) do
    assign(:scrade_session, ScradeSession.new(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new scrade_session form" do
    render

    assert_select "form[action=?][method=?]", scrade_sessions_path, "post" do

      assert_select "input#scrade_session_title[name=?]", "scrade_session[title]"

      assert_select "textarea#scrade_session_description[name=?]", "scrade_session[description]"
    end
  end
end

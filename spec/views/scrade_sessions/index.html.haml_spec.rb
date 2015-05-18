require 'rails_helper'

RSpec.describe "scrade_sessions/index", type: :view do
  before(:each) do
    assign(:scrade_sessions, [
      ScradeSession.create!(
        :title => "Title",
        :description => "MyText"
      ),
      ScradeSession.create!(
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of scrade_sessions" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

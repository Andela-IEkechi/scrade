require 'rails_helper'

RSpec.describe "scrade_terms/index", type: :view do
  before(:each) do
    assign(:scrade_terms, [
      ScradeTerm.create!(
        :scrade_session => nil,
        :title => "Title"
      ),
      ScradeTerm.create!(
        :scrade_session => nil,
        :title => "Title"
      )
    ])
  end

  it "renders a list of scrade_terms" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end

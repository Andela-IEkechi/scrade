require 'rails_helper'

RSpec.describe "scrade_terms/show", type: :view do
  before(:each) do
    @scrade_term = assign(:scrade_term, ScradeTerm.create!(
      :scrade_session => nil,
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Title/)
  end
end

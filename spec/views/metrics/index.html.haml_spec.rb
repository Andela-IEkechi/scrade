require 'rails_helper'

RSpec.describe "metrics/index", type: :view do
  before(:each) do
    assign(:metrics, [
      Metric.create!(
        :title => "Title",
        :quota => 1
      ),
      Metric.create!(
        :title => "Title",
        :quota => 1
      )
    ])
  end

  it "renders a list of metrics" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end

require 'rails_helper'

RSpec.describe "metrics/edit", type: :view do
  before(:each) do
    @metric = assign(:metric, Metric.create!(
      :title => "MyString",
      :quota => 1
    ))
  end

  it "renders the edit metric form" do
    render

    assert_select "form[action=?][method=?]", metric_path(@metric), "post" do

      assert_select "input#metric_title[name=?]", "metric[title]"

      assert_select "input#metric_quota[name=?]", "metric[quota]"
    end
  end
end

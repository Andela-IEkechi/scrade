require 'rails_helper'

RSpec.describe "metrics/new", type: :view do
  before(:each) do
    assign(:metric, Metric.new(
      :title => "MyString",
      :quota => 1
    ))
  end

  it "renders new metric form" do
    render

    assert_select "form[action=?][method=?]", metrics_path, "post" do

      assert_select "input#metric_title[name=?]", "metric[title]"

      assert_select "input#metric_quota[name=?]", "metric[quota]"
    end
  end
end

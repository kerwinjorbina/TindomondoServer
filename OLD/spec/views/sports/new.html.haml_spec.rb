require 'rails_helper'

RSpec.describe "sports/new", type: :view do
  before(:each) do
    assign(:sport, Sport.new())
  end

  it "renders new sport form" do
    render

    assert_select "form[action=?][method=?]", sports_path, "post" do
    end
  end
end

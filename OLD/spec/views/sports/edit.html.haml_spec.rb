require 'rails_helper'

RSpec.describe "sports/edit", type: :view do
  before(:each) do
    @sport = assign(:sport, Sport.create!())
  end

  it "renders the edit sport form" do
    render

    assert_select "form[action=?][method=?]", sport_path(@sport), "post" do
    end
  end
end

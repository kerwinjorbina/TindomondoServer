require 'rails_helper'

RSpec.describe "sports/index", type: :view do
  before(:each) do
    assign(:sports, [
      Sport.create!(),
      Sport.create!()
    ])
  end

  it "renders a list of sports" do
    render
  end
end

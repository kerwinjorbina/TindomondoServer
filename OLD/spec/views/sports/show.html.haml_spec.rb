require 'rails_helper'

RSpec.describe "sports/show", type: :view do
  before(:each) do
    @sport = assign(:sport, Sport.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

require 'rails_helper'

RSpec.describe "quotes/index", type: :view do
  before(:each) do
    assign(:quotes, [
      Quote.create!(),
      Quote.create!()
    ])
  end

  it "renders a list of quotes" do
    render
  end
end

require 'rails_helper'

RSpec.describe "quotes/show", type: :view do
  before(:each) do
    @quote = assign(:quote, Quote.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

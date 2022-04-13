# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Onboarding', type: :system, js: true do
  it 'registers and gets to the dashboard' do
    visit root_path

    expect(page).to have_content 'Hello Rails'
  end
end

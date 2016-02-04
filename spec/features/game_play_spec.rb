require 'spec_helper'

feature 'Game play' do

before do
  sign_in_and_play
  click_button "Attack@!£!$!%"
end

  scenario 'Attacking' do
    expect(page).to have_content('Jez Corbyn attacked Donald Trump')
  end

  scenario 'Ending the turn' do
    click_button 'Next turn'
    expect(page).to have_content('HP: 90')
  end
end

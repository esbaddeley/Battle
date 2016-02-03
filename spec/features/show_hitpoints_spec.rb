feature 'hitpoints' do

  scenario 'Player 1 can see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content('Emma: 60/60 HP')
  end

end

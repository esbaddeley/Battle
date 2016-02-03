def sign_in_and_play
  visit('/')
  fill_in('Player 1', with: 'Eirik')
  fill_in('Player 2', with: 'Emma')
  click_button('Submit')
end

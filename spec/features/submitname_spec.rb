feature 'submitname' do

  scenario 'allows players to enter their names' do
    visit('/')
    fill_in('Player 1', with: 'Eirik')
    fill_in('Player 2', with: 'Emma')
    click_button('Submit')
    expect(page).to have_content('Eirik', 'Emma')
  end

end

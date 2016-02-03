feature 'submitname' do

  scenario 'allows players to enter their names' do
    sign_in_and_play
    expect(page).to have_content('Eirik')
    expect(page).to have_content('Emma')
  end

end

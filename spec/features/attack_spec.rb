feature 'Attact' do
  scenario 'Get a confirmation for an attack on player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Attack on Emma successful')
  end
end

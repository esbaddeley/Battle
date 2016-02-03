feature 'Attack' do
  scenario 'Get a confirmation for an attack on player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Attack on Emma successful')
  end

  scenario 'Attack on player 2 reduces HP with 10' do
    sign_in_and_play
    attack
    expect(page).to have_content('Emma: 50/60 HP')
  end

  scenario 'Attack on player 1 reduces HP with 10' do
    sign_in_and_play
    attack
    attack
    expect(page).to have_content('Eirik: 50/60 HP')
  end


end

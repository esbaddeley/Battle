feature 'swith_turn' do

  scenario 'the game starts and one player is in control' do
    sign_in_and_play
    expect(page).to have_content('Eirik is playing')
    expect(page).not_to have_content('Emma is playing')
  end

  scenario 'players want to switch turns' do
    sign_in_and_play
    attack
    expect(page).to have_content('Emma is playing')
    expect(page).not_to have_content('Eirik is playing')
  end


end

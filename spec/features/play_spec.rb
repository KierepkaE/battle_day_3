require_relative '../../app.rb'

feature "user have HP points" do

  scenario 'viewing hitting points' do
    sign_in_and_play()
    expect(page).to have_content "Jerry points: 100 HP"
  end

  scenario 'attack confirmation' do
    sign_in_and_play()
    click_button("first_user_attack")
    expect(page).to have_content 'You attacked your oponent!'
    end

    scenario 'subtract points after 2 player got hit' do
      sign_in_and_play()
      # expect(page).not_to have_content "Jerry points: 100 HP"
      click_button("first_user_attack")
      expect(page).to have_content "Jerry points: 90 HP"
    end
  end
require_relative '../../app.rb'

feature "user have HP points" do

  scenario 'viewing hitting points' do
    sign_in_and_play()
    expect(page).to have_content "John points: 100 HP"
  end

  scenario 'attack confirmation' do
    sign_in_and_play()
    click_button("first_user_attack")
    expect(page).to have_content 'You attacked your oponent!'
    end

end
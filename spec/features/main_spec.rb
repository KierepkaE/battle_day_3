require_relative '../../app.rb'
feature "testing setting up our game" do

  scenario 'players can fill in their names and see them displayed' do
    sign_in_and_play()
    expect(page).to have_content("John vs Jerry")
  end

  scenario 'player has won' do
  sign_in_and_play()
  10.times {
    save_and_open_page
    click_button("second_user_attack")
  }
  expect(page).to have_content("Jerry WIN !!")
  end

end
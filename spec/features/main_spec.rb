require_relative '../../app.rb'
feature "testing setting up our game" do


  scenario 'players can fill in their names and see them displayed' do
    sign_in_and_play()
    expect(page).to have_content("John vs Jerry")
  end

end
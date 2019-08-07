def sign_in_and_play
  visit('/')
    fill_in :first_user, with: "John"
    fill_in :second_user, with: "Jerry"
    click_button "Submit"
end
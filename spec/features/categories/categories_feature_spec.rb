feature "Category feature" do



  background do
    user = create(:user)
    signin(user.email, user.password)
    expect(page).to have_content I18n.t 'devise.sessions.signed_in'
  end
  scenario 'valid user can create new category' do
    visit new_category_path()
    fill_in "Name", :with => "Parent Category"
    click_button "Create Category"
   expect(page).to have_content("success")

  end




end

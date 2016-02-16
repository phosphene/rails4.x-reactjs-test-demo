feature "Category feature" do

##currently using htmlunit selenium driver as is all html

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

  scenario 'valid user can select valid parent and create a valid child' do
    my_parent = create(:category, :parent)
    visit new_category_path()
    fill_in "Name", :with => "A Child"
    #uncomment this to see the rendered view
    #save_and_open_page
    select my_parent.name , :from => 'Parent Category'
    click_button "Create Category"
    expect(page).to have_content("success")
  end

end

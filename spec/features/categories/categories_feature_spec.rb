feature "Category feature" do

  ##currently using htmlunit selenium driver as is all html
  let(:user){create(:user, :archivist)}

  scenario 'as a valid archivist user I can create a new category' do
    signin(user.email, user.password)
    visit new_category_path()
    fill_in "Name", :with => "Parent Category"
    click_button "Create Category"
    expect(page).to have_content("success")

  end

  scenario 'as a valid archivist user I can select valid parent and create a valid child category' do
    signin(user.email, user.password)
    my_parent = create(:category, :parent)
    visit new_category_path()
    fill_in "Name", :with => "A Child"
    #uncomment this to see the rendered view
    #save_and_open_page
    select my_parent.name , :from => 'Parent Category'
    click_button "Create Category"
    expect(page).to have_content("success")
  end

  scenario 'as a regular user I cannot create categories' do
    user = create(:user, email: "test@testme.com")
    signin(user.email, user.password)
    visit new_category_path()
    ##save_and_open_page
    expect(page).to have_content("Access denied")
  end
end

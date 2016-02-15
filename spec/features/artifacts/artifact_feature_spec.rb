feature "Artifact feature" do

  let(:my_artifact){create(:artifact)}

  background do
    user = create(:user)
    signin(user.email, user.password)
    expect(page).to have_content I18n.t 'devise.sessions.signed_in'
  end
  scenario 'valid user can upload' do
    visit new_artifact_path()
    ##save_and_open_page
    attach_file "artifact", my_artifact.myfile.path
    click_button "Create Artifact"
   expect(page).to have_content("success")

  end




end

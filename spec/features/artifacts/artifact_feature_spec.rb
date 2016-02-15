feature "Artifact feature" do

  let(:my_artifact){create(:artifact)}

  background do
    user = create(:user)
    signin(user.email, user.password)
    expect(page).to have_content I18n.t 'devise.sessions.signed_in'
  end
  scenario 'valid user can upload' do
    pending
    visit artifacts_path()
    attach_file "Artifact", my_artifact.myfile.path
    click_button "Upload"
    page.should have_content("success")

  end




end

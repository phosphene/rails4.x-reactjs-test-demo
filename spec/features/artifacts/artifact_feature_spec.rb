feature "Artifact feature" do
  let(:user){create(:user, :archivist)}
  let(:basic_user){create(:user, email: "test@testme.com")}
  let(:my_artifact){create(:artifact)}

  scenario 'valid artifact user can upload' do
    signin(user.email, user.password)
    visit new_artifact_path()
    attach_file "artifact", my_artifact.myfile.path
    click_button "Create Artifact"
   expect(page).to have_content("success")
  end

  scenario 'basic ordinay user cannot access new artifact path' do
    signin(basic_user.email, basic_user.password)
    visit new_artifact_path()
    expect(page).to have_content("Access denied")
  end

end

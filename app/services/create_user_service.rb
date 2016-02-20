class CreateUserService
  def call_user
    user = User.find_or_create_by!(email: "user@test.com") do |user|
        user.password = "changeme"
        user.password_confirmation ="changeme"
        user.name = "Regular User"
        user.confirm!

      end
  end
  def call_archivist
    user = User.find_or_create_by!(email: "archivist@test.com") do |user|
      user.password = "changeme"
      user.password_confirmation ="changeme"
      user.name = "OG Archivist"
      user.confirm!
      user.archivist!

    end
  end
end

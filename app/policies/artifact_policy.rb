class ArtifactPolicy
  attr_reader :current_user, :artifact

  def initialize(current_user, artifact)
    @current_user = current_user
    @artifact = artifact
  end

  def create?
    @current_user.admin? or @current_user.archivist?
  end

  def new?
    @current_user.admin? or @current_user.archivist?
  end


  def index?
    @current_user.user? or @current_user.admin? or @current_user.archivist?
  end

  def show?
    @current_user.user? or @current_user.admin? or @current_user.archivist?
  end

  def update?
    @current_user.admin? or @current_user.archivist?
  end

  def destroy?
    @current_user.admin? or @current_user.archivist?
  end

end

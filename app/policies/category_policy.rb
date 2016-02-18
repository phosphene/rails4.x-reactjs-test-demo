class CategoryPolicy
  attr_reader :current_user, :category

  def initialize(current_user, category)
    @current_user = current_user
    @category = category
  end

  def create?
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

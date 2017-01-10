class User < ActiveRecord::Base
  enum role: [:user, :admin, :archivist]
  after_initialize :set_default_role, :if => :new_record?
  before_create :initialize_profile
  has_one :profile

  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  private

  def initialize_profile
    p = Profile.new do |p|
      p.user_id = self.id
    end

    if p.save
      self.profile = p
    else
      raise "Error creating profile"
    end
  end

  def destroy_profile
    p = self.profile
    p.destroy
  end

end

class Ability
  include CanCan::Ability

  def initialize user, namespace
    user ||= User.new
    alias_action :new, :create, :edit, :update, :destroy, to: :crud

    if user.admin?
      can :manage, :all
    else
      if namespace == "admin"
        cannot :manage, :all
      else
        can :manage, Comment
        can :read, :all
      end
    end
  end
end

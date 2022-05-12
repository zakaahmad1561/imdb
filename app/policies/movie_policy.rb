class MoviePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end
  def update?
    if user.present?
      user.moderater? || user.admin?
    end
  end

  def create?
    if user.present?
      user.moderater?
    end
  end

  def destroy?
    if user.present?
      user.admin?
    end
  end
end

class MoviePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      if user.present?
        if user.admin?
          scope.where(status: "draft")
        elsif user.moderater?
          scope.where(user_id: user.id , status: "published")
        else
          scope.where(status: "published")
        end
      end
    end
  end

  def index?
    true
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

class OfferingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
      # scope.where(user: user)
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  def update?
    user_is_owner?
  end

  def destroy?
    user_is_owner?
  end

  def show?
    true
  end

  def gigs?
    true
  end

  private

  def user_is_owner?
    record.user == user
  end
end

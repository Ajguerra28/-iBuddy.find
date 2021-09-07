class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def update?
    owner?
  end

  private

  def owner?
    record.user == user
  end
end

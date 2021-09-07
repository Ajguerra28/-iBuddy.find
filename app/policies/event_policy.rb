class EventPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  def new?
    true
  end

  # def update?
  #   owner?
  # end

  # def destroy
  #   owner?
  # end

  def my_events?
    true
  end

  private

  def owner?
    record.user == user
  end
end

class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    # Can only create if the event's not full
    # record.booking.max_people <= record.booking.max_people.count
  end
end

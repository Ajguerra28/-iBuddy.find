class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    # Can only create if the event's not full
    record.event_day.event.people_left.positive?
    # record.max_people.positive?
  end
end

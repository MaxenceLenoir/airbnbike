class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def update?
    record.user == user
  end

  def accepted? 
    true
  end

  def declined? 
    true
  end
end

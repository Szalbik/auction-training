class ProductPolicy < ApplicationPolicy
  def update?
    user.role? :owner or user.groups.any?{|g| g.role? :owner} or user.organization.any?{|o| o.role? :owner}
  end

  def show?
    user.role? :owner or user.groups.any?{|g| g.role? :owner} or user.organization.any?{|o| o.role? :owner}
  end

  def edit?
    user.role? :owner or user.groups.any?{|g| g.role? :owner} or user.organization.any?{|o| o.role? :owner}
  end

  def destroy?
    user.role? :owner or user.groups.any?{|g| g.role? :owner} or user.organization.any?{|o| o.role? :owner}
  end
end

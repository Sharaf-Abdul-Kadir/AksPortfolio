class PostPolicy < ApplicationPolicy
  attr_reader :user, :post

  def initialize(user, post)
    @user = user
    @post = post
  end

  def update?
    admin?
  end

  def admin?
    post.user == user
  end

  def toggle_status?
    update?
  end

  def destroy?
    update?
  end

  def show?
    true
  end

  
end
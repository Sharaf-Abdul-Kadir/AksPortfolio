class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
    @posts = Post.all
    @skills = Skill.all
  end

  def about
  end

  def contact
  end
end

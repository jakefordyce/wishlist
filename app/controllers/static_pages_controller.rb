class StaticPagesController < ApplicationController
  def home
    @lists = []
    if user_signed_in?
      @lists = current_user.lists
    end
  end
end

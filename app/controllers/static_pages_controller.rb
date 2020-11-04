class StaticPagesController < ApplicationController

  def home
    @lists = []
    if user_signed_in?
      @lists = current_user.lists
    else
      redirect_to new_user_session_path
    end
  end

  def search
    @users = User.ransack(username_cont: params[:q])
            .result(distinct: true)
            .joins(:collaborations).where.not(collaborations: {collab_id: params[:list_id]})

    respond_to do |format|
      format.html {}
      format.json{
        @users = @users.limit(5)
      }
    end
  end

end

class StaticPagesController < ApplicationController

  def home
    @lists = []
    @collabs = []
    if user_signed_in?
      @lists = current_user.lists
      @collabs = current_user.collabs
    else
      redirect_to new_user_session_path
    end
  end

  def search
    filtered_users = User.joins(:collaborations).where(collaborations: {collab_id: params[:list_id]})
    filtered_users += User.where(id: current_user.id)
    @list = List.find(params[:list_id])

    @users = User.ransack(username_cont: params[:q])
            .result(distinct: true)
            .where.not(id: filtered_users)

    respond_to do |format|
      format.html {}
      format.json{
        @users = @users.limit(5)
      }
    end
  end

end

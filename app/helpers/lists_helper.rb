module ListsHelper

  def list_belongs_to_user?(list)
    list.user_id == current_user
  end

end

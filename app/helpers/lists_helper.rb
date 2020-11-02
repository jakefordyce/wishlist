module ListsHelper

  def list_belongs_to_user?(list)
    user_signed_in? && list.user_id == current_user.id
  end

  def user_can_participate?(list)
    (user_signed_in? && list.user_id != current_user.id) ||
    (list_belongs_to_user?(list) && list.owner_can_participate?)
  end

end

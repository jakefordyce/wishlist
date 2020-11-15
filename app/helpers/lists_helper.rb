module ListsHelper

  def list_belongs_to_user?(list)
    user_signed_in? && list.user_id == current_user.id
  end

  def user_can_participate?(list)
    (user_signed_in? && list.user_id != current_user.id) ||
    (list_belongs_to_user?(list) && list.owner_can_participate?)
  end

  def show_request_button?(list)
    user_signed_in? &&
    !list_belongs_to_user?(list) &&
    !Collaboration.exists?(collab: list, collaborator: current_user.id) &&
    !CollabRequest.exists?(user: current_user, list: list)
  end

end

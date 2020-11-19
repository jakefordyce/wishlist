module ApplicationHelper
  def pending_requests
    result = "Requests "
    if user_signed_in?
      req_count = current_user.collab_requests.count
      req_count += CollabRequest.joins(:list).where(lists: {user_id: current_user.id}, from_owner: false).count
      result += req_count.to_s if req_count > 0
    end
    result
  end
end

json.users do
  json.array!(@users) do |user|
    json.name user.username
    json.url profile_path(user)
    json.user_id user.id
  end
end

json.users do
  json.array!(@users) do |user|
    json.name user.username
    json.url profile_path(user)
  end
end

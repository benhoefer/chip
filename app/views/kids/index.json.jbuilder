json.array!(@kids) do |kid|
  json.extract! kid, :id, :user_id, :name, :pin, :icon, :cash, :points
  json.url kid_url(kid, format: :json)
end

json.array!(@kachings) do |kaching|
  json.extract! kaching, :id, :assignment_id, :kid_id, :user_id, :approved, :cash_reward, :point_reward
  json.url kaching_url(kaching, format: :json)
end

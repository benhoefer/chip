json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :kid_id, :user_id, :name, :description, :approval_required, :sort_order, :show, :cash_reward, :point_reward, :daily, :weekly, :biweekly, :monthly, :once, :sun, :mon, :tue, :wed, :thur, :fri, :sat, :start_on, :icon
  json.url assignment_url(assignment, format: :json)
end

json.array!(@instathreat_users) do |instathreat_user|
  json.extract! instathreat_user, :id, :email, :phone_number, :why_owed_money
  json.url instathreat_user_url(instathreat_user, format: :json)
end

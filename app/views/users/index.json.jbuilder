json.array!(@users) do |user|
  json.extract! user, :id, :name, :email_address, :password, :dob, :in_hospital, :searchable_by_age, :searchable_by_condition, :is_caregiver, :dependant_dob
  json.url user_url(user, format: :json)
end

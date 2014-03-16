json.array!(@hangouts) do |hangout|
  json.extract! hangout, :id, :datetime, :title, :max_participants, :recordable, :hangout_url, :description, :user_id
  json.url hangout_url(hangout, format: :json)
end

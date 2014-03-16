json.array!(@models) do |model|
  json.extract! model, :id, :Hangout, :datetime, :title, :max_participants, :recordable, :hangout_url, :description
  json.url model_url(model, format: :json)
end

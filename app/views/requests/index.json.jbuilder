json.array!(@requests) do |request|
  json.extract! request, :id, :cfid, :user_id
  json.url request_url(request, format: :json)
end

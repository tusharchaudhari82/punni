json.array!(@taunts) do |taunt|
  json.extract! taunt, :id, :name, :content
  json.url taunt_url(taunt, format: :json)
end

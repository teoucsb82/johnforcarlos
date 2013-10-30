json.array!(@pins) do |pin|
  json.extract! pin, :name, :description
  json.url pin_url(pin, format: :json)
end

json.array!(@funds) do |fund|
  json.extract! fund, :email, :dollars
  json.url fund_url(fund, format: :json)
end

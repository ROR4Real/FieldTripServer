json.array!(@schools) do |school|
  json.extract! school, :board, :category, :school_type, :name, :address, :city, :province, :postal_code, :grades, :ecs
  json.url school_url(school, format: :json)
end

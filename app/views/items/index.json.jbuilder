json.array!(@items) do |item|
  json.extract! item, :id, :faculty, :subject, :IT1, :IT2
  json.url item_url(item, format: :json)
end

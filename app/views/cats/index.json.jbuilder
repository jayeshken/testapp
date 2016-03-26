json.array!(@cats) do |cat|
  json.extract! cat, :id, :faculty, :subject, :IT1, :IT2
  json.url cat_url(cat, format: :json)
end

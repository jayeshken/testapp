json.array!(@pages) do |page|
  json.extract! page, :id, :sem
  json.url page_url(page, format: :json)
end

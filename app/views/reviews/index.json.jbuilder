json.array!(@reviews) do |review|
  json.extract! review, :id, :subject, :IT1, :IT2
  json.url review_url(review, format: :json)
end

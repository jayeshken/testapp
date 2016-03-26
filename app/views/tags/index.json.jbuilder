json.array!(@tags) do |tag|
  json.extract! tag, :id, :name, :DMS, :IT1, :IT2, :DS, :IT1, :IT2, :CO, :IT1, :IT2, :EM, :IT1, :IT2, :SAD, :IT1, :IT2, :OOPD, :IT1, :IT2
  json.url tag_url(tag, format: :json)
end

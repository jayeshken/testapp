json.array!(@records) do |record|
  json.extract! record, :id, :name, :subject, :IT1, :IT2, :subject, :IT1, :IT2, :subject, :IT1, :IT2, :subject, :IT1, :IT2, :subject, :IT1, :IT2, :subject, :IT1, :IT2
  json.url record_url(record, format: :json)
end

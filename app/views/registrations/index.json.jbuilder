json.array!(@registrations) do |registration|
  json.extract! registration, :id, :fname, :lname, :uname, :age
  json.url registration_url(registration, format: :json)
end

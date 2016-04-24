json.array!(@donors) do |donor|
  json.extract! donor, :id, :last_name, :first_name, :address, :email, :phone_number
  json.url donor_url(donor, format: :json)
end

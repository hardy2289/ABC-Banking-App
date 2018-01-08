json.array!(@accounts) do |account|
	json.extract! account, :id, :bankLocation, :user_id, :userName, :userEmail, :userPhoneNo, :userAddress, :accountType, :balance, :overdraftLimit, :c_id, :dob
  json.url account_url(account, format: :json)
end

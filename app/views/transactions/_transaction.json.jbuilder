json.extract! transaction, :id, :transactionId, :userIde, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)

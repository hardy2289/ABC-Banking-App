json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :transPurpose, :services, :transactionDetails, :trasactionAmount, :account_id, :staff_id, :balanceBeforeTransaction, :balanceAfterTransaction
  json.url transaction_url(transaction, format: :json)
end

class Transaction < ActiveRecord::Base
    belongs_to :user
    belongs_to :account
    accepts_nested_attributes_for :account, :user
    validates :trasactionAmount, :numericality => {:greater_than => 0}
	validates :transPurpose, presence: true, length: {minimum:1, maximum:40}
    validates :transactionDetails, presence: true ,length: {minimum:1, maximum:40}
	validates :trasactionAmount, presence: true, length: {minimum:1, maximum:12}
	validates :account_id, presence: true ,length: {minimum:1, maximum:8}
	before_save :transaction_update
	
    private
    
	def transaction_update
		if self.transPurpose == 'Transfer'
				debit = Account.find(user_id)
				self.balanceBeforeTransaction = debit.balance
				self.balanceAfterTransaction = self.balanceBeforeTransaction - self.trasactionAmount
				self.balanceBeforeTransaction = self.balanceAfterTransaction
        debit.balance = self.balanceBeforeTransaction
		debit.save
		
		elsif self.transPurpose == 'Deposit'
				credit = Account.find(user_id)
			    self.balanceBeforeTransaction = credit.balance
			    self.balanceAfterTransaction = self.balanceBeforeTransaction + self.trasactionAmount
				self.balanceBeforeTransaction = self.balanceAfterTransaction
		credit.balance = self.total_balance
		credit.save

		end
	end
	

	
    
end

class Account < ActiveRecord::Base
    has_many :transactions
	belongs_to :user
	
	accepts_nested_attributes_for :transactions, :user
		
    validates :c_id, presence: true, length:{minimum:8}
    validates :userName, presence: true, length: {minimum:1, maximum:45}
    validates :dob, presence: true
	validates :userPhoneNo, presence: true, length: {minimum:1, maximum:11}
    validates :userAddress, presence: true, length: {minimum:7, maximum:65}
    validates :accountType, presence: true
	validates :balance, presence: true, length: {minimum:1, maximum:8}
	validates :overdraftLimit, presence: true, length: {minimum:1, maximum:8}
	validates :bankLocation, presence: true
	
	
	
#	before_save :user_setup
#	after_save :verify_user_account
	
	def user_setup
		if self.id.blank?
			self.id = self.email
		
		end
	end
	private	

        def verify_user_account
					if created_at == updated_at
					userobject = User.find(self.email)
					userobject.verify = "true"# setting up user verify column to true
					userobject.save
					end
				end
end

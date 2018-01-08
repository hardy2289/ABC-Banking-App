class Account < ActiveRecord::Base
    has_many :transactions
	belongs_to :user
	
		accepts_nested_attributes_for :transactions, :user
		
    validates :c_id, presence: true, length:{minimum:8}
	validates :accountType, presence: true, length: {minimum:1, maximum:20}
	validates :balance, presence: true, length: {minimum:1, maximum:8}
	validates :overdraftLimit, presence: true,length: {minimum:1, maximum:7}
	validates :userAddress, presence: true, length: {minimum:1, maximum:100}
	validates :dob, presence: true
	#validates :email, presence: true
	validates :userName, presence: true, length: {minimum:1, maximum:45}
	validates :userPhoneNo, presence: true, length: {minimum:1, maximum:11}
	before_save :user_setup
	after_save :verify_user_account
	def user_setup
		if self.id.blank?
			self.id = self.email
			#self.user_id = self.email
		end
	end
	private

        def verify_user_account
					if created_at == updated_at
					userobject = User.find(self.userEmail)
					userobject.verify = "true"# setting up user verify column to true
					userobject.save
					end
				end
end

class Staff < ActiveRecord::Base
    
   	validates :staffName, presence: true, length: {minimum:1, maximum:45}
	validates :staffEmail, presence: true
	validates :staffPhoneNo, presence: true, length: {minimum:1, maximum:11}
	validates :staffRole, presence: true
	validates :bankLocation, presence: true
	
end

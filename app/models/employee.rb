class Employee < ActiveRecord::Base
	#validates :name,:age,:salary,:gender, presence: true
	#validates :age ,  numericality: true
	#validates :name ,  length: { in: 6..20 }
	#validates :name , uniqueness: true
	#validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	validate :phone_validate

	validate :age_limit

	def age_limit
		if self.age.to_i < 21 or self.age.to_i > 65
			errors.add(:age , "age should be between 21 to 65 years only")
		end
	end

	def phone_validate
		if self.phone.length != 10
			errors.add(:phone, "Phone number should be equal to 10 digits")
		end 
	end
end



class Registration < ActiveRecord::Base
	before_save :username

	def username
		self.uname = "#{self.fname}  #{self.lname}"
	end
end

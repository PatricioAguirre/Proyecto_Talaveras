class Validation < ApplicationRecord
	def self.login(name, password)
		hashed_password = hash_password(password || "")
		find(:first, :conditions => ["name = ? and hashed_password = ?", name, hashed_password])
	end
	def try_to_login
		Validation.login(:nombre, :contrasena)
	end
end

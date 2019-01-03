class UserAccount < ApplicationRecord
	has_many :user_sessions
end

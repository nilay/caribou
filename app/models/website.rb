class Website < ApplicationRecord

	# Validations
  validates :url, presence: true
  
end

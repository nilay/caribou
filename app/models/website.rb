class Website < ApplicationRecord

	# Validations
  validates :url, presence: true

  # Fetch the content from url before saving the record in table
  before_create :set_content


  def set_content
  	# TODO: following task should be done as background job
  	begin
  		self.content = ::Scraper.scrap(self.url)
  	rescue Exception => e
  		self.content = e.message
  	end	
  end	


end

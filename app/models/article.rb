class Article < ActiveRecord::Base

	#Relationships
	has_many :tags

end

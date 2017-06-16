class Product < ApplicationRecord
	 acts_as_commentable
	belongs_to :user
		belongs_to :category



	  mount_uploader :images, AbcUploader
end

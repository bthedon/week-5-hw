class Post < ActiveRecord::Base
	extend FriendlyId
	friendly_id :name, use: :slugged
	has_many :comments
	has_many :post_categories
	has_many :categories, through: :post_categories
	belongs_to :user
	validates_uniqueness_of :name

	def sluggable
		name + " " + "#{Time.now.to_i}"
	end

end

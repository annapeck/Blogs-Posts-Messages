class User < ActiveRecord::Base
	has_many :owners
	has_many :owned_blogs, through: :owners, source: :blog, dependent: :destroy
	has_many :blogs_posted_on, through: :posts, dependent: :destroy, source: :blog
	has_many :messages
	has_many :comments, as: :commentable
	has_many :posts
	has_many :posted_message, through: :messages, source: :post, dependent: :destroy
	validates :first_name, :last_name, :email_address, presence: true
end

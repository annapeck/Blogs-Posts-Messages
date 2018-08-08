class Blog < ActiveRecord::Base
	has_many :users_owned_by,through: :owners, source: :user, dependent: :destroy
	has_many :owners
	has_many :posts
	has_many :comments, as: :commentable
	has_many :users_posted_by, through: :posts, source: :user, dependent: :destroy
	validates :name, :description, presence: true
end

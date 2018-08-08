class Post < ActiveRecord::Base
  belongs_to :blog
  has_many :messages
  has_many :users, through: :messages, dependent: :destroy
  belongs_to :user
  has_many :comments, as: :commentable
  validates :title, :content, presence: true
  validates :title, length: { minimum: 7 }
end

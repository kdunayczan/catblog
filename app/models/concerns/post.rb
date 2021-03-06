class Post < ActiveRecord::Base
	belongs_to :user
  	validates :title, presence: true, length: { minimum: 3, maximum: 50 }
  	validates :description, presence: true, length: { minimum: 10, maximum: 300 }
  	validates :body, presence: true
  	validates :user_id, presence: true
end

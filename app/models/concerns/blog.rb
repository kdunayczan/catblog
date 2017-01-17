class Blog < ActiveRecord::Base
  validates :title, presences: true, length { minimum: 3, maximum: 50 }
  validates :description, presence: true, length { minimum: 10, maximum: 300 }
  validates :body, presence: true
end

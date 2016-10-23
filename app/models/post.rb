class Post < ActiveRecord::Base
  belongs_to :tenant
  has_many :comments
  validates :title, presence: true
end
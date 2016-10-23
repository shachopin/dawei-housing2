class Comment < ActiveRecord:Base
  belongs_to :post
  belongs_to :tenant
  validates :body, presence: true
end
class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :book
  
  #コメントに対して制限を設ける 
  validates :title, presence: true
  validates :content,presence: true
  validates :rate,presence: true

end

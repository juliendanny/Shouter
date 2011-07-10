class Shout < ActiveRecord::Base
  belongs_to :user
  
  validates :body, :presence => true
end

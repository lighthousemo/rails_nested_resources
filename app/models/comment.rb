class Comment < ActiveRecord::Base
  validates :name, presence: true
end

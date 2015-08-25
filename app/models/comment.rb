class Comment < ActiveRecord::Base
  belongs_to :article
  has_many :reply_comments
  #acts_as_tree order: 'created_at DESC'
end

class Question < ActiveRecord::Base
  belongs_to :user
  has_many :votes, as: :votable
  has_many :comments, as: :commentable

  def author_username
    user.username
  end
end

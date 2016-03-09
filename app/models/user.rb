class User < ActiveRecord::Base
  has_secure_password
  has_many :questions
  has_many :answers
  has_many :votes, class_name: 'Votes', foreign_key: 'voter_id'
  has_many :comments, class_name: 'Votes', foreign_key: 'commenter_id'
  validates :username, presence: true, uniqueness: true

end

class User < ActiveRecord::Base
  has_many :questions
  has_many :answers
  has_many :votes, class_name: 'Votes', foreign_key: 'voter_id'
  has_many :comments, class_name: 'Votes', foreign_key: 'commenter_id'
end

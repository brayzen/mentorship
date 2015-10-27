class Mentor < ActiveRecord::Base
  has_many :mentorships
  has_many :mentees, :through => :mentorships
end

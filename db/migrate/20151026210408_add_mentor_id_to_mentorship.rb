class AddMentorIdToMentorship < ActiveRecord::Migration
  def change
    add_reference :mentorships, :mentor, index: true, foreign_key: true
  end
end

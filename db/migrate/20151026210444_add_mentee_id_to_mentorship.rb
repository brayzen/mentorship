class AddMenteeIdToMentorship < ActiveRecord::Migration
  def change
    add_reference :mentorships, :mentee, index: true, foreign_key: true
  end
end

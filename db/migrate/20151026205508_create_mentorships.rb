class CreateMentorships < ActiveRecord::Migration
  def change
    create_table :mentorships do |t|
      t.string :topic
      t.integer :meettime
      t.belongs_to :mentors
      t.belongs_to :mentees
      t.timestamps null: false
    end
  end
end

class CreateMentees < ActiveRecord::Migration
  def change
    create_table :mentees do |t|
      t.string :name
      t.string :age
      t.timestamps null: false
    end
  end
end

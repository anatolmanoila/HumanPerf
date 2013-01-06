class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.integer :user_progress
      t.string :user_status
      t.string :user_rating
      t.string :task_title
      t.string :of_type

      t.timestamps
    end
  end
end

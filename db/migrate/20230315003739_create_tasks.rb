class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.integer :user_id
      t.boolean :status

      t.timestamps
    end
  end
end

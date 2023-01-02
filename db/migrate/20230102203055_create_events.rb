class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.string :address
      t.string :image_url
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end

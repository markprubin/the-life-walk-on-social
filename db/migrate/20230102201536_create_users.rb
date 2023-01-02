class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :image_url
      t.string :phone
      t.date :birth_date
      t.string :home_address
      t.text :bio
      t.boolean :admin

      t.timestamps
    end
  end
end

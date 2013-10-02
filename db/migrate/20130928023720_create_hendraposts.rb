class CreateHendraposts < ActiveRecord::Migration
  def change
    create_table :hendraposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end

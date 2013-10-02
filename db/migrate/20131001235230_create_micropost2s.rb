class CreateMicropost2s < ActiveRecord::Migration
  def change
    create_table :micropost2s do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end

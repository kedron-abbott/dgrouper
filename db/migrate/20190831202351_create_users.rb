class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :firstname, null: false
      t.string :lastname, null: false
      t.string :phone, null: false
      t.string :email, null: false
      t.integer :gender, null: false
      t.integer :status, default: 0
      t.references :chapter, null: false, foreign_key: true

      t.timestamps
    end
  end
end

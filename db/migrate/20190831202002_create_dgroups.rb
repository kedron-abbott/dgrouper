class CreateDgroups < ActiveRecord::Migration[6.0]
  def change
    create_table :dgroups do |t|
      t.time :time, null: false
      t.integer :day, null: false
      t.references :chapter, null: false, foreign_key: true
      t.integer :location, null: false
      t.integer :gender, null: false

      t.timestamps
    end
  end
end

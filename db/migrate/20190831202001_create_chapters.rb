class CreateChapters < ActiveRecord::Migration[6.0]
  def change
    create_table :chapters do |t|
      t.string :school, null: false

      t.timestamps
    end
  end
end

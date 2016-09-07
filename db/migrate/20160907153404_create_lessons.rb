class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :content
      t.integer :number
      t.integer :section_id

      t.timestamps
    end
  end
end

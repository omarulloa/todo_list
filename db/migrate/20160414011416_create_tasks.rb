class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :note
      t.boolean :completed

      t.timestamps null: false
    end
  end
end

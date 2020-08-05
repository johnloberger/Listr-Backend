class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :text
      t.boolean :is_completed
      t.integer :list_id

      t.timestamps
    end
  end
end

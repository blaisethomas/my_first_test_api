class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.boolean :is_completed
      t.references :list, index: true

      t.timestamps
    end
  end
end

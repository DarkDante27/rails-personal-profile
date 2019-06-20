class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :photos, default: [], array: true

      t.timestamps
    end
  end
end

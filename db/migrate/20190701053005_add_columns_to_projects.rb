class AddColumnsToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :short_description, :string
    add_column :projects, :dev_description, :text
  end
end

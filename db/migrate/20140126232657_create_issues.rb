class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :identity
      t.string :title
      t.text :description
      t.integer :status
      t.references :project

      t.timestamps
    end

    add_index :issues, :project_id
  end
end

class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :faculty
      t.string :subject
      t.float :IT1
      t.float :IT2

      t.timestamps
    end
  end
end

class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :faculty
      t.string :subject
      t.float :IT1
      t.float :IT2

      t.timestamps
    end
  end
end

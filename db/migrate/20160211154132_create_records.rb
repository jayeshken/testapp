class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :name
      t.string :subject
      t.integer :IT1
      t.integer :IT2
      t.string :subject
      t.integer :IT1
      t.integer :IT2
      t.string :subject
      t.integer :IT1
      t.integer :IT2
      t.string :subject
      t.integer :IT1
      t.integer :IT2
      t.string :subject
      t.integer :IT1
      t.integer :IT2
      t.string :subject
      t.integer :IT1
      t.integer :IT2

      t.timestamps
    end
  end
end

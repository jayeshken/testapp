class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.string :DMS
      t.integer :IT1
      t.integer :IT2
      t.string :DS
      t.integer :IT1
      t.integer :IT2
      t.string :CO
      t.integer :IT1
      t.integer :IT2
      t.string :EM
      t.integer :IT1
      t.integer :IT2
      t.string :SAD
      t.integer :IT1
      t.integer :IT2
      t.string :OOPD
      t.integer :IT1
      t.integer :IT2

      t.timestamps
    end
  end
end

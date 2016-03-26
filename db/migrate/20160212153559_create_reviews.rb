class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :subject
      t.float :IT1
      t.float :IT2

      t.timestamps
    end
  end
end

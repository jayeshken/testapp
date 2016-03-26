class AddIt3ToCats < ActiveRecord::Migration
  def change
    add_column :cats, :IT3, :float
  end
end

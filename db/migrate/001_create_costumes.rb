# Create a class and inherit from ActiveRecord::Migration
class CreateCostumes < ActiveRecord::Migration[5.1]
# By convention, the class name should match the part of the
# file name after the number, so in this case:
# 002_create_costumes.rb becomes class CreateCostumes
  def change
    create_table :costumes do |c|
      c.string :name
      c.float :price
      c.integer :size
      c.string :image_url
      c.datetime :created_at
      c.datetime :updated_at
    end
  end
end
# Define a change method in which to do the migration
# In this change method, create columns with the correct names and
# value types according to the spec
class AddColumnToarticals < ActiveRecord::Migration
  def change
  	add_column :articles, :auther, :string
  end
end

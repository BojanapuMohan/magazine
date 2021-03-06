class CreateCommentHierarchies < ActiveRecord::Migration
  def change
    create_table :comment_hierarchies  do |t|
    	 t.integer  :ancestor_id, :null => false   # ID of the parent/grandparent/great-grandparent/... comments
      t.integer  :descendant_id, :null => false # ID of the target comment
      t.integer  :generations, :null => false   # Number of generations between the ance
    end
  end
end

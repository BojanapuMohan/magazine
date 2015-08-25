class CreateReplyComments < ActiveRecord::Migration
  def change
    create_table :reply_comments do |t|
      t.references :comment, index: true
      t.text :body

      t.timestamps
    end
  end
end

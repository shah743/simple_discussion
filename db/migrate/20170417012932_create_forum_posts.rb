class CreateForumPosts < ActiveRecord::Migration
  def change
    create_table :forum_posts, force: :cascade do |t|
      t.references :forum_thread, foreign_key: true
      t.references :user, foreign_key: true
      t.text     :body
      t.boolean  :solved, default: false

      t.timestamps
    end
  end
end

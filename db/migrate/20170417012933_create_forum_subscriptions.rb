class CreateForumSubscriptions < ActiveRecord::Migration
  def change
    create_table :forum_subscriptions, force: :cascade do |t|
      t.references :forum_thread, foreign_key: true
      t.references :user, foreign_key: true
      t.string   :subscription_type

      t.timestamps
    end
  end
end

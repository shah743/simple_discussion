class CreateForumCategories < ActiveRecord::Migration
  def change
    create_table :forum_categories, force: :cascade do |t|
      t.string   :name, null: false
      t.string   :slug, null: false
      t.string   :color, default: "000000"

      t.timestamps
    end

    ForumCategory.reset_column_information

    ForumCategory.create(
      name: "General",
      color: "#4ea1d3",
    )

    ForumCategory.create(
      name: "Feedback",
      color: "#16bc9c",
    )
  end
end

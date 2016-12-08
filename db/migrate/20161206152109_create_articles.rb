class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.belongs_to :specialist
      t.string :title
      t.string :author
      t.string :content
      t.string :source

      t.timestamps
    end

    create_table :questions do |t|
      t.belongs_to :article
      t.string :content

      t.timestamps
    end
  end
end

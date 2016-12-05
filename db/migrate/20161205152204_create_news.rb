class CreateNews < ActiveRecord::Migration[5.0]
  def change
    create_table :news do |t|
      t.string :news_title
      t.string :news_author
      t.string :news_content
      t.string :news_url

      t.timestamps
    end
  end
end

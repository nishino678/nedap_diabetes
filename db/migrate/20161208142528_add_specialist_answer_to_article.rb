class AddSpecialistAnswerToArticle < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :explanation, :string
  end
end

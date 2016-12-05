class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.integer :question_id
      t.string :answer_1
      t.string :answer_2
      t.string :answer_3
      t.integer :specialist_id
      t.string :answer_specialist

      t.timestamps
    end
  end
end

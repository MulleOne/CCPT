class CreateFaQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :fa_questions do |t|
      t.text :question
      t.text :answer

      t.timestamps
    end
  end
end

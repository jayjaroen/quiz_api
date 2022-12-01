class CreateQuizItems < ActiveRecord::Migration[7.0]
  def change
    create_table :quiz_items do |t|
      t.text :question
      t.references :quiz_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateEvaluations < ActiveRecord::Migration[7.0]
  def change
    create_table :evaluations do |t|
      t.integer :scores
      t.text :remarks

      t.timestamps
    end
  end
end

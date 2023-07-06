class CreateLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :logs do |t|
      t.references :user, null: false, foreign_key: true
      t.float :weight
      t.float :body_fat
      t.float :muscle_mass

      t.timestamps
    end
  end
end

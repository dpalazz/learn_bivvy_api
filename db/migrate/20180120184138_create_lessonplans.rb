class CreateLessonplans < ActiveRecord::Migration[5.2]
  def change
    create_table :lessonplans do |t|
      t.references :service, foreign_key: true
      t.references :lesson, foreign_key: true

      t.timestamps
    end
  end
end

class CreateStudents < ActiveRecord::Migration
  def change
    create_table   :students do |t|
      t.string     :student_name
      t.belongs_to :teacher, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end

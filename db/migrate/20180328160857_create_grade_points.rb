class CreateGradePoints < ActiveRecord::Migration
  def change
    create_table :grade_points do |t|
      t.string :title
      t.text :content

      t.boolean :notice, default: false # 게시글 공지 지정 설정

      t.timestamps null: false
    end
  end
end

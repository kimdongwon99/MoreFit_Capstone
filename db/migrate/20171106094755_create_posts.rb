class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.references :user, index: true, foreign_key: true
      t.boolean :notice, default: false # 게시글 공지 지정 설정
      t.timestamps null: false
    end
  end
end

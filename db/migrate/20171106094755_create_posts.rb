class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.references :user, index: true, foreign_key: true
      
      t.boolean :notice, default: false # 게시글 공지 지정 설정

      belongs_to:user
      t.timestamps null: false
    end
  end
end

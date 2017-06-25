class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
    t.string :name #이름 column
    t.string :content #내용 column
    t.string :image_url , :default => "" #이미지 주소로 가져오기때문에 string으로 지정 , 이미지 주소없을때 기본값은 비어었슴.
    t.timestamps null: false
    
    
    end
  end
end

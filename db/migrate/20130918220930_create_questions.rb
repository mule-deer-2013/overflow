class CreateQuestions < ActiveRecord::Migration
  def up
  	create_table :questions do |t|
  		t.string :title
  		t.string :content
  		t.belongs_to :user
  	end
  end

  def down
  end
end

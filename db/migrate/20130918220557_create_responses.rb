class CreateResponses < ActiveRecord::Migration
 def change
    create_table :responses do |t|
      t.belongs_to :user
      t.belongs_to :question
      t.string :body
    end
  end
end


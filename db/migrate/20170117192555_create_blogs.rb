class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :description
      t.text :body
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end

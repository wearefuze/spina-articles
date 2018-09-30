class CreateSpinaArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :spina_articles do |t|
      t.string :title
      t.string :slug
      t.text :body
      t.text :teaser
      t.date :publish_date
      t.string :author
      t.integer :draft, default: true
      t.timestamps
      t.references :image, foreign_key: { to_table: :spina_images }
    end
  end
end

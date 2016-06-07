class AddPhotoIdToSpinaArticles < ActiveRecord::Migration
  def change
    add_column :spina_articles, :photo_id, :integer
  end
end
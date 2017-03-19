class ChangeUrlToImage < ActiveRecord::Migration[5.0]
  def change
    rename_column :images, :url, :photo
  end
end

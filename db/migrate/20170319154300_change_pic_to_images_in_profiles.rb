class ChangePicToImagesInProfiles < ActiveRecord::Migration[5.0]
  def change
    rename_column :profiles, :pic, :image
  end
end

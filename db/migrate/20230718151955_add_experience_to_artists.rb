class AddExperienceToArtists < ActiveRecord::Migration[7.0]
  def change
    add_column :artists, :experience, :integer
  end
end

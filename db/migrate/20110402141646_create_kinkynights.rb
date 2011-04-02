class CreateKinkynights < ActiveRecord::Migration
  def self.up
    create_table :kinkynights do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :kinkynights
  end
end

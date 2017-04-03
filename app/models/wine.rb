class Wine < ApplicationRecord
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      next unless row["name"]
      Wine.create! row.to_hash
    end
  end
end

class Wine < ApplicationRecord
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Wine.create! row.to_hash
    end
  end
end

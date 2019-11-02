class Visit < ApplicationRecord

  belongs_to :url

  def self.register_for(url)
    Visit.create(url: url)
  end
end

class Url < ApplicationRecord

  def self.create_from(original_url)
    token = TokenGenerator.generate_from(original_url)
    Url.create(original_url: original_url, token: token)
  end
end

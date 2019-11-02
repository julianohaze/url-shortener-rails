class TokenGenerator
  require "zlib"

  def self.generate_from(url)
    Zlib.adler32(url).to_s(16)
  end
end
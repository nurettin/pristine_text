require "pristine_text/version"
require "open3"
require "unicode_utils"
require "htmlentities"

module PristineText
  def self.pipe(text, locale)
    if `which stemwords`.empty?
      raise LoadError.new("cannot find stemwords, install libstemmer-tools")
    end
    Open3.popen3("stemwords -l #{locale}") do |i, o, e, t|
      i.write text
      i.close
      o.read.strip
    end
  end

  def self.stem(text, locale)
    if text.kind_of?(Array)
      pipe(text.join("\n"), locale).split("\n")
    elsif text.kind_of?(String)
      pipe text, locale
    end
  end

  def self.clean(text, locale= :en, stem= true)
    text= UnicodeUtils.downcase(HTMLEntities.new.decode(text), locale).
      gsub(/[^\p{Letter}\s]+/, "").
      strip.squeeze
    if stem
      stem(text.split, locale).join " "
    else
      text
    end
  end
end

require "pristine_text"
require "minitest/autorun"

class PristineTextTest< Minitest::Unit::TestCase
  def test_clean
    assert_equal PristineText.clean("haberler geliyorlar gidiyorlar", :tr), "haber geliyor gidiyor"
  end
end

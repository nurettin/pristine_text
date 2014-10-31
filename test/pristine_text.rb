require "pristine_text"
require "minitest/autorun"

class PristineTextTest< Minitest::Test
  def test_clean
    assert_equal PristineText.clean("haberler geliyorlar gidiyorlar", :tr), "haber geliyor gidiyor"
  end
end

require "pristine_text"
require "minitest/autorun"

class PristineTextTest< Minitest::Unit::TestCase
  def test_clean
    assert_equal PristineText.clean("haberler geliyorlar gidiyorlar", :tr), "haber geliyor gidiyor"
    assert_equal PristineText.clean("}{ÜĞ09&nbsp;İŞi!'^+çö\n\t\v][';.,üğişçö&quot;", :tr), "üğişiçö üğişçö"
  end
end

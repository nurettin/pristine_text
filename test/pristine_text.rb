#encoding: UTF-8
require "pristine_text"
require "minitest/autorun"

class PristineTextTest< Minitest::Unit::TestCase
  def test_clean
    assert_equal PristineText.clean("haberler geliyorlar gidiyorlar", :tr), "haber geliyor gidiyor"
    assert_equal PristineText.clean("}{ÜĞ09&nbsp;İŞi!'^+çö\n\t\v][';.,üğişçö&quot;", :tr), "üğişiçö üğişçö"
    txt= "        Zamanında Haber             Gaziantepte sağlıklı Yaşam Ve Hareket Yılı İlan Edildi      Zamanında Haber     2014 yılının Sağlık Bakanlığı tarafından &#39;Sağlıklı Yaşam ve Hareket Yılı&#39; ilan edilmesi münasebetiyle Gaziantep Halk Sağlığı Müdürlüğü tarafından, her ay farklı bir kurumla yürüyüşler gerçekleştirileceği bildirildi.&#39;Sağlıklı... 01 Kasım 2014 Cumartesi 15:27.    Gaziantep&#39;te &#39;Sağlıklı Yaşam ve Hareket Yılı&#39; İlan Edildi   Haberler      Sağlıklı Yaşam Yürüyüşü   Star Gündem      Sağlıklı Yaşam Yürüyüşüne Davet   Haberin Adresi       Haber Kenti        51 haber makalesinin tümü&nbsp;&raquo;         "
    puts txt
    puts
    puts PristineText.clean(txt, :tr)
  end
end

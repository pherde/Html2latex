require 'minitest/autorun'
require "html2latex"

class Html2latexTest < Minitest::Test
  def test_load_tags
  	refute_nil Html2latex.tags
  end

  def test_bold
  	assert_equal "\\textbf{}", Html2latex.translate("<b></b>")
  end
end
require 'minitest/autorun'
require "html2latex"

class Html2latexTest < Minitest::Test
  def test_load_tags
  	refute_nil Html2latex.tags
  end

  def test_bold
  	assert_equal "\\textbf{}", Html2latex.translate("<b></b>")
  end

  def test_add
  	hash = {'<foo>' => '\bar{'}
  	Html2latex.add(hash)
  	assert_equal "\\bar{}", Html2latex.translate("<foo></foo>")
  end

  def test_persist_tag
  	assert_equal "\\bar{Content}", Html2latex.translate("<foo>Content</foo>")
  end

  def test_delete
  	Html2latex.delete('<foo>')
  	assert_equal "<foo></foo>", Html2latex.translate("<foo></foo>")
  end
end
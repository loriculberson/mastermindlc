#test the randomly generated code

gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '..lib/code'

class CodeTest < Minitest::codeTest
  def test_code_is_generated
    code = Code.new("RBYG")

    assert_equal code "RBYG", code.create
  end

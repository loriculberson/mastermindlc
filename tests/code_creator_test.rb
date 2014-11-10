#test the randomly generated code

gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/code_creator'


class CodeCreatorTest < Minitest::Test
  def test_has_four_characters
    code = CodeCreator.new

    assert_equal 4, code.create.length
  end

  def test_code_is_array
    code = CodeCreator.new

    assert code.create.is_a?(Array)
  end

end



# code = Code.new
# print code
require '../lib/cli'
require_relative 'test_helper'

class CLITest < Minitest::Test

  def test_if_user_can_quit?
    cli = CLI.new(nil, nil)
    cli.stub :command, 'q' do 
      assert true, cli.quit?
      refute false, cli.play?
      refute false, cli.instructions?
    end
  end

  def test_if_user_can_ask_for_instructions?
    cli = CLI.new(nil,nil)
    cli.stub :command, 'i' do
      assert true, cli.instructions? 
      refute false, cli.play?
      refute false, cli.quit?
    end
  end

  def test_if_user_can_play?
    cli = CLI.new(nil,nil)
    cli.stub :command, 'p' do
      assert true, cli.play? 
      refute false, cli.quit?
      refute false, cli.instructions?
    end
  end
end
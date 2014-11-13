lib_dir = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib_dir)

require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require '../lib/cli'
require 'pry'

CLI.new($stdin, $stdout).game_start
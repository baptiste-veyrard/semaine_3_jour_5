require 'bundler'
Bundler.require

require_relative 'lib/controller'
require_relative 'lib/router'
require_relative 'lib/gossip.rb'
require_relative 'lib/view'

Router.new.perform
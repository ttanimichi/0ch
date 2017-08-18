#!/usr/bin/env ruby

require "bundler/setup"

require_relative 'models/db'
require_relative 'models/topic'
require_relative 'models/post'

require "irb"
IRB.start(__FILE__)

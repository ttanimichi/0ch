#!/usr/bin/env ruby

require "bundler/setup"

require_relative 'models/db'
require_relative 'models/topic'

require "irb"
IRB.start(__FILE__)

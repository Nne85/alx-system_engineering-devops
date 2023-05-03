#!/usr/bin/env ruby
#This script accepts one argument and pass it to a regular expression matching method without a square bracket

puts ARGV[0].scan(/hbt*n/).join

#!/usr/bin/env ruby
result = `sass src/elegant.scss dist/elegant.css`
raise result unless $?.to_i == 0
raise "When compiled the module should output some CSS" unless File.exists?('elegant.css')
puts "Regular compile worked successfully"

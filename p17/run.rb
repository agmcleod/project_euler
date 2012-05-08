require File.join(File.dirname(__FILE__), 'calculate.rb')

include Calculate

keys = {}
IO.read('keys.txt').split(/\n/).each do |n|
  vals = n.split(',')
  keys[vals[0]] = vals[1]
end

total = 0
1000.times do |i|
  total += count_characters(i + 1, keys)
end
puts total
a = ["hello", "world", 1,2,42]
a.each do |item|
  puts item
end
a.each do |item|
  puts "the item is #{item}"
end
h = {hello: "world", 1 => 2, 'one' => 'two'}
h.each do |key, value|
  p "The key is #{key}"
  p "The value is #{value}"
end

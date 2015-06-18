def tricky_method_two(a_string_param, an_array_param)
  puts "a_string_param id #{a_string_param.object_id}"
  puts "an_array id #{an_array_param.object_id}"
  a_string_param.gsub!('pumpkins', 'rutabaga')
  puts "after gsub a_string id is #{a_string_param.object_id}"
  an_array_param = ['pumpkins', 'rutabaga']
  puts "after assign an_array id is #{an_array_param.object_id}"
end

my_string = "pumpkins"
puts "my_string object id #{my_string.object_id}"
my_array = ["pumpkins"]
puts "my_array object id #{my_array.object_id}"
tricky_method_two(my_string, my_array)

puts "after method call my_string id is #{my_string.object_id}"
puts "after method call my_array is is #{my_array.object_id}"

#will print "rutabaga" for my_string
#and will print ["pumpkins"] for my_array

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
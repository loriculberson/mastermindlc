codeletters = ["r", "b","g","y"]
user_guess = ["r", "r","r","+"]

selected = []

selected = (user_guess - codeletters) 
 
selected.count

if selected.count > 0
  puts "Invalid answer. Try again"
else
  puts "Let's play!"
end


# ordered.each do |value1|
#   some_list.include? value1 
#     new_array << value1
#   end
# end

# puts "yay" if [1, 2, 3].all? { |i| (1..9).include?(i) }
# # => "yay"


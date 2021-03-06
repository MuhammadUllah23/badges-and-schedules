# Write your code here.
require 'pry' 

def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
    greeting = []
    attendees.each do |name|
        greeting << badge_maker(name)
    end
    return greeting
    binding.pry
end

def assign_rooms(speaker)
    greeting = []
    speaker.each_with_index{|name, index| greeting << "Hello, #{name}! You'll be assigned to room #{index+1}!"} 
    return greeting
end

def printer(names)
   result = batch_badge_creator(names)
   result.each do |x|
    puts x
   end
   result = assign_rooms(names)
   result.each do |x|
    puts x
   end
end
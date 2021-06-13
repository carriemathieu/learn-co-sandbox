def batch_badge_creator(attendees)
  badge_messages = []
  attendees.each do |name|
    badge_messages << "Hello, my name is #{name}."
  end
  return badge_messages
end

def assign_rooms(attendees)
  room_assignments = []
  room = 1
  attendees.each do |name|
    room_assignments << "Hello, #{name}! You'll be assigned to room #{room}!"
    room += 1
  end
  return room_assignments
end

def printer(attendees)
  puts batch_badge_creator(attendees)
  assign_rooms(attendees).each do |room|
    puts "#{room}"
  end
end

attendees = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]
assign_rooms(attendees)
printer(attendees)
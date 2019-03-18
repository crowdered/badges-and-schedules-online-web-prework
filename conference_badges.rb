attendees = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  attendees.map do |attendee|
    badge_maker(attendee)
end
end

def assign_rooms(attendees)
  attendees.map.with_index do |attendee, index|
    "Hello, #{attendee}! You'll be assigned to room #{index+1}!"
end
end

def printer(attendees)
  batch_badge_creator(attendees).each do |badge|
    puts badge
  end

assign_rooms(attendees).each do |assignment|
  puts assignment
end
end

City.destroy_all
User.destroy_all
Event.destroy_all
Occasion.destroy_all

pittsburgh = City.create({name: "Pittsburgh", vibe: "chill", avg_temperature: 51})
los_angeles = City.create({name: "Los Angeles", vibe: "laid-back", avg_temperature: 72})

hector = User.create({name: "Hector", current_city: "Seattle"})

haunted = Event.create({name: "Haunted House", event_type: "Seasonal Event", date_digits: 10302020, avg_age_attendees: 28})
drake = Event.create({name: "Drake Concert", event_type: "Music", date_digits: 10302020, avg_age_attendees: 22})


occasion1 = Occasion.create({collab_name: "Occasion1", city_id: 1, event_id: 1})
occasion2 = Occasion.create({collab_name: "Occasion2", city_id: 2, event_id: 2})

puts "Seed done"
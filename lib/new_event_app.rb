class NewEventApp
attr_reader :user
    def run
        welcome
        login_and_signup
        create_event
        event_search
        update_event
        delete 
        bye
    end

    def welcome
        puts "Welcome to the Events application!"
    end 

    def login_and_signup
        puts "Type your name"
        username = gets.chomp
        puts "Type your city"
        city = gets.chomp
        @user = User.find_or_create_by({name: username, current_city:  city})
    end
    def create_event
        puts "Do you want to a create an event you heard about? Type 'yes' if yes. Type anything else otherwise."
        response = gets.chomp
        if response == "yes"
            puts "What is the name of the event?"
            eventname = gets.chomp
            puts "What is the type of the event?"
            eventkind = gets.chomp
            puts "What is the date of the event in 8 digits (mmddyyyy)?"
            eventdate = gets.chomp
            puts "What is an average age you would give to attendees"
            eventage = gets.chomp 
            Event.create({name: eventname, event_type: eventkind, date_digits: eventdate, avg_age_attendees: eventage})
        end  
end
    def event_search
        puts "Do you want to see all of events. Type 'all' if you do. If not type 'no'."
        answer = gets.chomp
        if answer == "all"
           Event.all.each do |event| 
            puts "Event name: #{event.name}, Event Type: #{event.event_type}, Event Date: #{event.date_digits}, Average Attendee Age: #{event.avg_age_attendees}"  
           end
        else
        end
    end

    

    def update_event
        puts "Do you want to update event. If yes, type 'yes'. If not, type anything else."
        answer = gets.chomp
        if answer == "yes"
            puts "Type the name of the event you want to change"
                name_to_change = gets.chomp
             event = Event.find_by_name("#{name_to_change}")
                puts "Event name: #{event.name}, Event Type: #{event.event_type}, Event Date: #{event.date_digits}, Average Attendee Age: #{event.avg_age_attendees} 
Type the attribute you want to update('name', 'event type', 'date', 'average age'), also note dates are recorded as 8 digit integers:"
                information = gets.chomp
                puts "Type the updated value you want for that attribute"
                specific = gets.chomp

                if information == "name"
                    event.update(name: specific)
                elsif information == "event type"
                    event.update(event_type: specific)
                elsif information == "date"
                    event.update(date_digits: specific)
                elsif information == "average age"
                    event.update(avg_age_attendees: specific)
                end
            end
        end

        def delete
            puts "If you think an event is lame, tell me the name. I will delete the event from our list. If you like all the events type 'no'"
            hate = gets.chomp
                Event.where(:name => hate).destroy_all
        end

        def bye
            puts "Thank you for using our app! Hope you find something fun to do!"
        end    

end
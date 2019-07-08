# your solution here


def one_line_stops(line, start_station, end_station)

    subway_lines = {
        red: ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
        green: ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"],
        orange: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]
    }

     start_index = subway_lines[:"#{line}"].index(start_station)
     end_index = subway_lines[:"#{line}"].index(end_station)
     counter = 0
     if start_index < end_index
        while start_index + 1 <= end_index do 
            p "#{subway_lines[:"#{line}"][start_index]}"
            counter +=1
            start_index +=1 
     end
    else 
        while start_index -1 >= end_index do
            p "#{subway_lines[:"#{line}"][start_index]}"
            counter +=1
            start_index -=1

    end
end
    return counter
end


def stops_between_stations(start_line, start_station,end_line, end_station)
        p "Start line: "
            start_line = gets.chomp()
        p "Start station: "   
            start_station = gets.chomp()
        p "End line: "
            end_line = gets.chomp()
         p "End station: "
            end_station = gets.chomp()

        puts "You must travel through the following stops on the #{start_line} line: "
        stops = 0
        if start_line == end_line
            stops = one_line_stops(start_line, start_station, end_station)
        else
            stops = one_line_stops(start_line, start_station, 'Park Street')
            puts "Change at Park Street."
            puts "Your trip continues through the following stops on #{end_line} Line:"
            stops += one_line_stops(end_line, 'Park Street', end_station)
            p "Arrival to #{end_station}!"
        end
        return puts ("Number of stops = " + stops.to_s)
end




# def one_line_stops(line, start_station, end_station)

#     subway_lines = {
#     red: ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
#     green: ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"],
#     orange: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]
# }

# start_index = subway_lines[:"#{line}"].index(start_station)
# end_index = subway_lines[:"#{line}"].index(end_station)

# counter = 0

# if start_index < end_index
#     while start_index + 1 <= end_index do 
#         p "#{lines[:"#{line}"][start_index]}"
#         counter +=1
#         start_index +=1
#     end
# else 
#     while start_index -1 >= end_index do
#     p "#{lines[:"#{line}"][start_index]}"
#         counter +=1
#         start_index -=1
#     end
# end
# return  counter
# end

# def stops_between_stations(start_line, start_station,end_line, end_station)

#     p "Enter you start line :"
#         start_line = gets.chomp()
#     p "Enter you start station :"   
#         start_station = gets.chomp()
#     p "Enter you end line :"
#         end_line = gets.chomp()
#      p "Enter you end station :"
#         end_station = gets.chomp()


#         puts "You must travel through the following stops on the #{start_line} line:"

#         stops = 0
    
#         if start_line == end_line
#             stops = one_line_stops(start_line, start_station, end_station)
#         else
#             #counting the stations BEFOR change the line
#             stops = one_line_stops(start_line, start_station, 'Park Street')
#             #print some info to the user
#             puts "Change at Park Street."
#             puts "Your trip continues through the following stops on #{end_line} Line:"
    
#             #counting the stations AFTER change the line
#             stops += one_line_stops(end_line, 'Park Street', end_station)
    
#             #print info
#             p "Finaly at #{end_station}"

#         end
#         return puts (stops.to_s + " Stops in total.")


# end
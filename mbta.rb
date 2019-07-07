
# your solution here

#===Methodes for travling in the same line====#
def stops_in_one_line(line, start_station, end_station)
    lines = {
        red: ['South Station', 'Park Street', 'Kendall', 'Central', 'Harvard', 'Porter', 'Davis', 'Alewife'],
        green: ['Government Center', 'Park Street', 'Boylston', 'Arlington', 'Copley', 'Hynes', 'Kenmore'],
        orange: ['North Station', 'Haymarket', 'Park Street', 'State', 'Downtown Crossing', 'Chinatown', 'Back Bay', 'Forest Hills']
    }
    
        
    #getting the index
    start_index = lines[:"#{line}"].index(start_station)
    end_index = lines[:"#{line}"].index(end_station)
    # counting the stops
    counter = 0
    
    # travle from left to right
    if start_index < end_index
        while start_index + 1 <= end_index do 
            #print the stations name
            p "#{lines[:"#{line}"][start_index]}"
            counter +=1
            start_index +=1
        end
    else #travel from right to left
        while start_index -1 >= end_index do
        #print the stations name
        p "#{lines[:"#{line}"][start_index]}"
            counter +=1
            start_index -=1
        end
    end
    
    return  counter
end

#===The Main Methode====#
def stops_between_stations(start_line, start_station,end_line, end_station)
    
    p "Enter you start line :"
        start_line = gets.chomp()
    p "Enter you start station :"   
        start_station = gets.chomp()
    p "Enter you end line :"
        end_line = gets.chomp()
     p "Enter you end station :"
        end_station = gets.chomp()

    #print info to the user
    puts "You must travel through the following stops on the #{start_line} line:"

    stops = 0

    if start_line == end_line
        stops = stops_in_one_line(start_line, start_station, end_station)
    else
        #counting the stations BEFOR change the line
        stops = stops_in_one_line(start_line, start_station, 'Park Street')
        #print some info to the user
        puts "Change at Park Street."
        puts "Your trip continues through the following stops on #{end_line} Line:"

        #counting the stations AFTER change the line
        stops += stops_in_one_line(end_line, 'Park Street', end_station)

        #print info
        p "Finaly at #{end_station}"
    
    end
    return puts (stops.to_s + " Stops in total.")

end

stops_between_stations("red", "South Station", "green", "Kenmore")
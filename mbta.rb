def calculate_stops(start_point, end_point)
    if start_point < end_point
        end_point - start_point
    elsif start_point > end_point
        start_point - end_point
    else
        0
    end
end



def stops_between_stations(start_line, start_station, end_line, end_station)
    start_line = start_line.to_sym
    end_line = end_line.to_sym

    lines = {
        Red: [
            'South Station',
            'Park Street',
            'Kendall',
            'Central',
            'Harvard',
            'Porter',
            'Davis',
            'Alewife',
        ],
        Green: [
            'Government Center',
            'Park Street',
            'Boylston',
            'Arlingrton',
            'Copley',
            'Hynes',
            'Kenmore',
        ],
        Orange: [
            'North Station',
            'Haymarket',
            'Park Street',
            'Downtown Crossing',
            'chinatown',
            'Back Bay',
            'Forest Hills',
        ]
    }
    if (!lines[start_line] || !lines[end_line]) 
        return "Sorry, you need to enter correct lines"
    end


    if (!lines[start_line].include?(start_station) || !lines[end_line].include?(end_station))
        return "Sorry, you need to enter correct stations"
    end

    start_point = lines[start_line].index(start_station) + 1
    end_point = lines[end_line].index(end_station) + 1

    if start_line != end_line
        counter = 0
        park_street_start = lines[start_line].index('Park Street') + 1
        park_street_end = lines[end_line].index('Park Street') + 1

        counter += calculate_stops(start_point, park_street_start)
        counter += calculate_stops(park_street_end, end_point)
        return counter
    else
        return calculate_stops(start_point, end_point)
    end
    
end


p stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0 stops
p stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7 stops
p stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6 stops
p stops_between_stations('Green', 'Government Center', 'Orange', 'North Station') # 3 stops
p stops_between_stations('Purple', 'Government Center', 'Orange', 'North Station') # Sorry, you need to enter correct lines
p stops_between_stations('Green', 'Center', 'Orange', 'North Station') # Sorry, you need to enter correct stations

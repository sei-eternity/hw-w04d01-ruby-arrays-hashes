


def stops_between_stations(start_line, start_station, end_line, end_station)
    
    subway_lines = {
        Red: [
        'South Station',
        'Park Street',
        'Kendall',
        'Central',
        'Harvard',
        'Porter',
        'Davis',
        'Alewife'
        ],
        Green: [
        'Government Center',
        'Park Street',
        'Boylston',
        'Arlington',
        'Copley',
        'Hynes',
        'Kenmore'
        ],
        Orange: [
        'North Station',
        'Haymarket',
        'Park Street',
        'State',
        'Downtown Crossing',
        'Chinatown',
        'Back Bay',
        'Forest Hills'
        ]
        # l=Orange.index('State')
        # p l
    }
    
    
    start_station_index = subway_lines[start_line].index(start_station)
    
    end_station_index = subwayLines[end_ine].index(endStation)
    
    
    if (start_line = end_line)
        (start_station_index - end_station_index).abs
    end
    
    start_line_park_street_index = subway_lines[start_line].index('Park Street')
    
    trip_to_park_street = (start_station_index - start_line_park_street_index).abs
    
    end_line_park_street_index = subwayLines[end_line].index('Park Street')
    
    trip_to_destination =(end_station_index - end_line_park_street_ndex).abs
    
    total_trip = trip_to_park_street + trip_to_destination
    
     total_trip
end







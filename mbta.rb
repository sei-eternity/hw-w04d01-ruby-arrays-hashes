


     Red= [
      'South Station',
      'Park Street',
      'Kendall',
      'Central',
      'Harvard',
      'Porter',
      'Davis',
      'Alewife'
    ]
    Green = [
      'Government Center',
      'Park Street',
      'Boylston',
      'Arlington',
      'Copley',
      'Hynes',
      'Kenmore'
    ]
    Orange = [
      'North Station',
      'Haymarket',
      'Park Street',
      'State',
      'Downtown Crossing',
      'Chinatown',
      'Back Bay',
      'Forest Hills'
    ]
# your solution here
def stops_between_stations(start_line, start_station, end_line, end_station )

p "Rider boards the train a ---  Line and #{start_station}."
p "Rider exits the train at ---  Line and #{end_station}."
   start_station_index =   start_line.index(start_station)

   end_station_index =  end_line.index(end_station)

if (start_line === end_line)
   return p (start_station_index - end_station_index).abs
end

 start_line_park_street_index = start_line.index('Park Street')


 trip_to_park_street = (start_station_index - start_line_park_street_index).abs

  end_line_park_street_index = end_line.index('Park Street')


trip_to_destination = (end_station_index - end_line_park_street_index).abs

 p total_trip = trip_to_park_street + trip_to_destination
end



stops_between_stations(Red, 'Alewife', Red, 'Alewife') #0 stops

stops_between_stations(Red, 'Alewife', Red, 'South Station') #7 stops

stops_between_stations(Red, 'South Station', Green, 'Kenmore') # 6 stops


# Bonus
#
# puts "What line will you take? Red, Green, or Orange"
#     $start_line = gets.chomp
#
# puts "What Station will you get on  ?"
#     start_station = gets.chomp.to_s
#
# puts "What line will you get off from? Red, Green, or Orange"
#     $end_line = gets.chomp
#
# puts "What Station will you get off  ?"
#     end_station = gets.chomp.to_s
#
#  stops_between_stations($start_line, start_station , $end_line, end_station)

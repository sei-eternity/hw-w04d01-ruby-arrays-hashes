
# your solution here
p "hi" 

def stops_between_stations (start_line, start_point, dest_line, dest_point)

    lines = {
    Red: [
      "South Station",
      "Park Street",
      "Kendall",
      "Central",
      "Harvard",
      "Porter",
      "Davis",
      "Alewife"
    ],
    Green: [
      "Government Center",
      "Park Street",
      "Boylston",
      "Arlington",
      "Copley",
      "Hynes",
      "Kenmore"
    ],
    Orange: [
      "North Station",
      "Haymarket",
      "Park Street",
      "State",
      "Downtown Crossing",
      "Chinatown",
      "Back Bay",
      "Forest Hills"
    ]
  }
    start_line = start_line.to_sym
    dest_line = dest_line.to_sym

    start_point = lines[start_line].index(start_point)
    dest_point= lines[dest_line].index(dest_point)

    if start_line == dest_line
      (start_point - dest_point).abs

    else 
    intersection = lines[start_line].index("Park Street")
    intersection2 = (start_point - intersection).abs
    end_intersection = lines[dest_line].index("Park Street")
    dest_intersection = (dest_point - end_intersection).abs

    total_trip = intersection2 + dest_intersection
    
    end
  
end
vari =stops_between_stations('Red', 'Alewife', 'Red', 'Alewife')
vari1=stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
vari2=stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6

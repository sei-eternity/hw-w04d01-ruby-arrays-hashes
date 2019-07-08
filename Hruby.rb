def stops_between_stations

    subwayLines = {
       Red:["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
           Green:["Government Center", "Park Street", "Boylston" , "Arlington", "Copley", "Hynes", "Kenmore"],
           Orange: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"],
     }
     if (startLine == endLine)
         (subwayLines[startLine.to_sym].index(startStation) - subwayLines[endLine.to_sym].index(endStation)).abs
       else
         (subwayLines[startLine.to_sym].index(startStation) - subwayLines[startLine.to_sym].index("Park Street")).abs + (subwayLines[endLine.to_sym].index("Park Street") - subwayLines[endLine.to_sym].index(endStation)).abs
       end
     
     
     
   
       if (startLine === endLine) {
         return Math.abs(startStationIndex - endStationIndex)
       }
       stops_between_stations("Red", "Davis", "Red", "Alewife")
       stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') 

    end
def stops_between_stations

    subwayLines = {
       Red:["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
           Green:["Government Center", "Park Street", "Boylston" , "Arlington", "Copley", "Hynes", "Kenmore"],
           Orange: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"],
     }
    
    stopsBetweenStations = (startLine, startStation, endLine, endStation) {
   
    startStationIndex = subwayLines[startLine].indexOf(startStation)
  
    endStationIndex = subwayLines[endLine].indexOf(endStation)
        
     if (startLine == endLine)
         (subwayLines[startLine].index(startStation) - subwayLines[endLine].index(endStation)).abs
       else
         (subwayLines[startLine].index(startStation) - subwayLines[startLine].index("Park Street")).abs + (subwayLines[endLine].index("Park Street") - subwayLines[endLine].index(endStation)).abs
       end
     
     
     
   
       if (startLine === endLine) {
         return Math.abs(startStationIndex - endStationIndex)
       }
       tripToDestination = Math.abs(endStationIndex - endLineParkStreetIndex)
       totalTrip = tripToParkStreet + tripToDestination
  
       return totalTrip
      }
        }
    end

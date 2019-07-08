
# your solution here


    def stopsBetweenStations (startLine, startStation, endLine, endStation)
        subwayLines = {
    Red: ["South Station","Park Street","Kendall","Central","Harvard","Porter","Davis","Alewife"],
    Green: ["Government Center","Park Street","Boylston","Arlington","Copley","Hynes","Kenmore"],
    Orange: ["North Station","Haymarket","Park Street","State","Downtown Crossing","Chinatown","Back Bay","Forest Hills"] 
}
     startStationIndex = subwayLines[startLine].index(startStation)
     endStationIndex = subwayLines[endLine].index(endStation)
  
    if startLine == endLine 
      (startStationIndex - endStationIndex).abs
    end 


     startLineParkStreetIndex = subwayLines[startLine].index('Park Street')
  

      
       tripToParkStreet = (startStationIndex - startLineParkStreetIndex).abs
  
      
       endLineParkStreetIndex = subwayLines[endLine].index('Park Street')
    
      
       tripToDestination = (endStationIndex - endLineParkStreetIndex).abs
    
  
       totalTrip = tripToParkStreet + tripToDestination
    
     
      p totalTrip

    end
    

stopsBetweenStations('Red', 'Alewife', 'Red', 'Alewife')
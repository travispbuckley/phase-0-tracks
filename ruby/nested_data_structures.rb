hockey_rink = {
	humans: {
			home_team: {
				offense: {
						  forwards: 2 ,
						  wingers: 6 
						  },
				defense: {
						  aggressive: [
						  			  'Buckley', 
						  			  'Griffin'],
						  passive: [
						  		    'Howard', 
						  		    'Gershman'] 
						 }
				},
			away_team: {
				coaches: [
						  'Johnson', 
						  'Henry'],
				goalies:
					{
					starter: {saves: 145},
					backup: {saves: 26}	
					},
				lead_scorers: [
							  'Billy', 
							  'Thomas', 
							  'Adam']	
						}
			},
	equipment: {
		pucks: 48 ,
		sticks: {bauer: 24,
				ccm: 17,
				warrior: ['Dynasty', 'Covert', 'QRL4']   }
	}
}
puts "Who are the aggressive defensemen of the home team?"
puts hockey_rink[:humans][:home_team][:defense][:aggressive]
puts "Oh no! Gershman got injured! Replace her with Obama!"
p hockey_rink[:humans][:home_team][:defense][:passive]
hockey_rink[:humans][:home_team][:defense][:passive][1] = "Obama"
p hockey_rink[:humans][:home_team][:defense][:passive]
puts "How many saves does the starting goalie for the away team have?"
p hockey_rink[:humans][:away_team][:goalies][:starter]
puts "What brand of warrior sticks do we have?"
p hockey_rink[:equipment][:sticks][:warrior]
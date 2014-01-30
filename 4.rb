#(4a) 


class WrongNumberOfPlayersError <  StandardError ; end
class NoSuchStrategyError <  StandardError ; end

def rps_game_winner(game)

	raise WrongNumberOfPlayersError unless game.length == 2
	win = {"r"=>"s", "s"=>"p", "p"=>"r"}
	
	first_player_choice = [(game[0][1]).downcase]
	second_player_choice = [(game[1][1]).downcase]
	
	case first_player_choice
	when "r"
		case second_player_choice
		when "r"
			return game[0]
		when "p"
			return game[1]
		when "s"
			return game[0]
		else
			raise NoSuchStrategyError

		
	
    

end

game =  [ ["Armando", "P"], ["Dave", "S"] ]
 

#(4b) 

def rps_tournament_winner(tournament)
	if tournmaten[0][0]is.a? string
		return 

[

    [

        [ ["Armando", "P"], ["Dave", "S"] ],

        [ ["Richard", "R"],  ["Michael", "S"] ],

    ],

    [

        [ ["Allen", "S"], ["Omer", "P"] ],

        [ ["David E.", "R"], ["Richard X.", "P"] ]

    ]

]



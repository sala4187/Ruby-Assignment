#(4a) 

class WrongNumberOfPlayersError <  StandardError ; end
class NoSuchStrategyError <  StandardError ; end

def rps_game_winner(game)

    raise WrongNumberOfPlayersError unless game.length == 2 # must be two players

    first_player_choice = game[0][1].downcase # access player 1 choice
    second_player_choice = game[1][1].downcase # access player 2 choice
 

    case first_player_choice # create case statements for the different plays
    when 'r'
        case second_player_choice
            
        when 'r'
            return game[0]
        when 'p'
            return game[1]
        when 's'
            return game[0]
        else
            raise NoSuchStrategyError
        end

    when 'p'
        case second_player_choice
        
        when 'r'
            return game[0]
        when 'p'
            return game[0]
        when 's'
            return game[1]
        else
            raise NoSuchStrategyError
        end
    when 's'
        case second_player_choice
    
        when 'r'
            return game[1]
        when 'p'
            return game[0]
        when 's'
            return game[0]
        else
            raise NoSuchStrategyError
        end

    else
        raise NoSuchStrategyError
    end

end

puts "4(a)"
game =  [ ["Armando", "P"], ["Dave", "S"] ]

p rps_game_winner(game)
 

#(4b) 

def rps_tournament_winner(tournament)
	if tournament[0][0].is_a? String # have we reached a point where two teams are playing?
		return rps_game_winner(tournament)
	end
	# otherwise keep going (recursion)
	return rps_game_winner([rps_tournament_winner(tournament[0]),rps_tournament_winner(tournament[1])])
end

tournament = [

    [

        [ ["Armando", "P"], ["Dave", "S"] ],

        [ ["Richard", "R"],  ["Michael", "S"] ],

    ],

    [

        [ ["Allen", "S"], ["Omer", "P"] ],

        [ ["David E.", "R"], ["Richard X.", "P"] ]

    ]

]

puts "4(b)"
p rps_tournament_winner(tournament)

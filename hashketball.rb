require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def num_points_scored(players_name)
  nds = game_hash
  nds[:away][:players].each do |x|
  nds[:home][:players].each do |y|
    #binding.pry
        x.values
        y.values
         if players_name == x.values[0]
           return x.values[3]
           elsif players_name == y.values[0]
           return y.values[3]
    end
  end 
 end
end 

def shoe_size(players_name)
  nds = game_hash
  nds[:away][:players].each do |away_player_hash|
  nds[:home][:players].each do |home_player_hash|
    if players_name == away_player_hash.values[0]
      return away_player_hash.values[2]
      elsif players_name == home_player_hash.values[0]
      return home_player_hash.values[2]
   end  
  end 
 end
end

def team_colors(team_name)
  nds = game_hash
  if team_name == nds[:home][:team_name]
    return nds[:home][:colors]
    elsif team_name == nds[:away][:team_name]
    return nds[:away][:colors]
  binding.pry
#return array of that teams color 
#input team name - return color of kit
 end
end

def team_names
  nds = game_hash
  final_array = []
  final_array << nds[:home][:team_name]
  final_array << nds[:away][:team_name]
  return final_array
end 

def player_numbers(team_name)
player_num = []
if team_name == game_hash[:home][:team_name]
 game_hash[:home][:players].each do |player|
   player_num.push(player[:number])
   elsif 
   game_hash[:away][:players].each do |player|
   player_num.push(player[:number])
 end 
 end 
 player_num
 end 
 end














  

// TREEHOUSE SOCCER COORDINATOR SWIFT TASK
// COMPLETED BY MATINE CHABRIER

/*
    Part 1: We have provided information for the 18 players in the Player Info spreadsheet. Please choose an appropriate data type to store the information for each player. In addition, create an empty collection variable to hold all the players’ data. Once you have decided on what tools to use, manually enter the player data so it can be used in Part 2.
*/

// Create dictionary collections for all the players
let joeSmith : [String: String] = [
    "name" : "Joe Smith",
    "height": "42",
    "soccerExperience": "YES",
    "guardianName": "Jim and Jan Smith"
]
let jillTanner : [String: String] = [
    "name" : "Jill Tanner",
    "height": "36",
    "soccerExperience": "YES",
    "guardianName": "Clara Tanner"
]
let billBon : [String: String] = [
    "name" : "Bill Bon",
    "height": "43",
    "soccerExperience": "YES",
    "guardianName": "Sara and Jenny Bon"
]
let evaGordon : [String: String] = [
    "name" : "Eva Gordon",
    "height": "45",
    "soccerExperience": "NO",
    "guardianName": "Wendy and Mike Gordon"
]
let mattGill : [String: String] = [
    "name" : "Matt Gill",
    "height": "40",
    "soccerExperience": "NO",
    "guardianName": "Charles and Sylvia Gill"
]
let kimmyStein : [String: String] = [
    "name" : "Kimmy Stein",
    "height": "41",
    "soccerExperience": "NO",
    "guardianName": "Bill and Hillary Stein"
]
let sammyAdams : [String: String] = [
    "name" : "Sammy Adams",
    "height": "45",
    "soccerExperience": "NO",
    "guardianName": "Jeff Adams"
]
let karlSaygan : [String: String] = [
    "name" : "Karl Saygan",
    "height": "42",
    "soccerExperience": "YES",
    "guardianName": "Heather Bledsoe"
]
let suzaneGreenberg : [String: String] = [
    "name" : "Suzane Greenberg",
    "height": "44",
    "soccerExperience": "YES",
    "guardianName": "Henrietta Dumas"
]
let salDali : [String: String] = [
    "name" : "Sal Dali",
    "height": "41",
    "soccerExperience": "NO",
    "guardianName": "Gala Dali"
]
let joeKavalier : [String: String] = [
    "name" : "Joe Kavalier",
    "height": "39",
    "soccerExperience": "NO",
    "guardianName": "Sam and Elaine Kavalier"
]
let benFinkelstein : [String: String] = [
    "name" : "Ben Finkelstein",
    "height": "44",
    "soccerExperience": "NO",
    "guardianName": "Aaron and Jill Finkelstein"
]
let diegoSoto : [String: String] = [
    "name" : "Diego Soto",
    "height": "41",
    "soccerExperience": "YES",
    "guardianName": "Robin and Sarika Soto"
]
let chloeAlaska : [String: String] = [
    "name" : "Chloe Alaska",
    "height": "47",
    "soccerExperience": "NO",
    "guardianName": "David and Jamie Alaska"
]
let arnoldWillis : [String: String] = [
    "name" : "Arnold Willis",
    "height": "43",
    "soccerExperience": "NO",
    "guardianName": "Claire Willis"
]
let phillipHelm : [String: String] = [
    "name" : "Phillip Helm",
    "height": "44",
    "soccerExperience": "YES",
    "guardianName": "Thomas Helm and Eva Jones"
]
let lesClay : [String: String] = [
    "name" : "Les Clay",
    "height": "42",
    "soccerExperience": "YES",
    "guardianName": "Wynonna Brown"
]
let herschelKrustofski : [String: String] = [
    "name" : "Herschel Krustofski",
    "height": "45",
    "soccerExperience": "YES",
    "guardianName": "Hyman and Rachel Krustofski"
]

// Create an empty array of dictionaries
var players = [[String: String]]()

// Manually append each player dictionary to the above array
players.append(joeSmith)
players.append(jillTanner)
players.append(billBon)
players.append(evaGordon)
players.append(mattGill)
players.append(kimmyStein)
players.append(sammyAdams)
players.append(karlSaygan)
players.append(suzaneGreenberg)
players.append(salDali)
players.append(joeKavalier)
players.append(benFinkelstein)
players.append(diegoSoto)
players.append(chloeAlaska)
players.append(arnoldWillis)
players.append(phillipHelm)
players.append(lesClay)
players.append(herschelKrustofski)




/*
Part 2: Create logic that can iterate through all 18 players and assign them to teams such that the number of experienced players on each team are the same. Store each team’s players in its own new collection variable for use in Part 3. (Please note: your logic should work correctly regardless of the initial ordering of the players and should work, if we theoretically had more or less than 18 players, so NO MAGIC NUMBERS!)
*/

// Create 3 empty variables which will be the teams arrays
var teamDragons = [[String: String]]()
var teamSharks = [[String: String]]()
var teamRaptors = [[String: String]]()

// Create empty variables to separate the players with or without experience
var playersWithExperience = [[String: String]]()
var playersWithoutExperience = [[String: String]]()

// Iterate through the players and populate the above variables with the results
for player in players {
    if player["soccerExperience"] == "YES" {
        playersWithExperience.append(player)
    } else {
        playersWithoutExperience.append(player)
    }
}

// Create a function, since it will be run twice
// It takes an array of players and evenly distributes them between the 3 teams
func distributeInTeams(players: [[String : String]]) {
    var counter : Int = 0
    for player in players {
        ++counter
        if counter % 3 == 0 {
            teamDragons.append(player)
        } else if counter % 2 == 0 {
            teamSharks.append(player)
        } else if counter % 1 == 0 {
            teamRaptors.append(player)
        }
    }
}
// Calling the above function for both sets of players
distributeInTeams(playersWithExperience)
distributeInTeams(playersWithoutExperience)



/*
Part 3: Create logic that iterates through all three teams of players and generates a personalized letter to the guardians, letting them know which team their child has been placed on and when they should attend their first team team practice. As long as you provide the necessary information (player name, team name, guardians’ names, practice date/time), feel free to have fun with the content of the letter. The team practice dates/times are as follows: Dragons - March 17, 1pm, Sharks - March 17, 3pm, Raptors - March 18, 1pm
*/

// Create a function to determine the date/time for each teams practice
func practiceDateTime(teamName : String) -> String {
    switch teamName {
        case "Dragons" : return "March 17, 1pm"
        case "Sharks" : return "March 17, 3pm"
        case "Raptures" : return "March 18, 1pm"
        default : return "Date not set"
    }
}

// Create a function that takes an array of players and writes a personalised letter
func letterMaker( players : [[String : String]], teamName : String ) {
    for player in players {
        // Get basic info for the player
        let name = player["name"]
        let guardianName = player["guardianName"]

        // Using the above function to get the date/time of the game
        let dateTime = practiceDateTime(teamName)
        
        // String interpolating the info to get the letter
        let letter = "Dear \(guardianName!), your child \(name!) is on team '\(teamName)' and will be playing a practice game on \(dateTime). "
        // Print letter
        print(letter)
    }
}

// Call the above fuction to print out the letters for the 3 teams
letterMaker(teamDragons, "Dragons")
letterMaker(teamSharks, "Sharks")
letterMaker(teamRaptors, "Raptors")























module Drills exposing (drillRecord, drillTemplate)

import Header
import Html exposing (Html, a, div, h3, p, text)
import Html.Attributes exposing (class, href)
import Models exposing (Drill, Page, Route(..))


coverOn : Drill
coverOn =
    { name = "Cover On Drill", time = "10 minutes", next = { name = "Run Clear Drill", href = "/drills/run-clear" }, details = [ "This will make the racket arm stronger, which will give a player more power and enable them to play for longer before the arm begins to fatigue. This will make it harder to swing because of the added air resistance and weight. Play shots on both the forehand and backhand.", "2 players can try and hit a shuttle between them with the racket covers on. Stand close together as the shuttle probably wont travel very far. See how many times the shuttle can be hit consecutively.", "Remember to make sure that the wrist is cocked on the back swing, and to reach as far back as possible with the arm fully extended on each attempt. Swing fast enough to hear a swishing sound." ], source = "https://www.teachpe.com/sports-coaching/badminton/badminton-practice-games/cover-on" }


runClear : Drill
runClear =
    { name = "Run Clear Drill", time = "20 minutes", next = { name = "Wall Return Drill", href = "/drills/wall-return" }, details = [ "This drill aims to improve the clear technique. At least four players are needed for this drill to work properly. Player 1 starts at one service line with a shuttle. Player 2 is positioned near the back of the diagonally opposite service box. Player 3 stands near the back of the service box opposite player 2, and player 4 should be off the court behind player 2.", "Player 1 then hits a high serve to player 2. Player 1 runs round the court and stops behind player 4. As this happens player 2 plays a clear down the line in the direction of player 3.", "Player 2 then follows their shot to the same end as player 3. Each player in turn hits a clear and follows their shot to the opposite side of the net. The rally keeps going until a player messes up.", "Make sure that the grip, stance, and swing are correct. Also make sure that the shuttle is being hit at the highest possible point." ], source = "https://www.teachpe.com/sports-coaching/badminton/badminton-practice-games/run-clear" }


wallReturn : Drill
wallReturn =
    { name = "Wall Return Drill", time = "10 minutes", next = { name = "Wrap-up Game", href = "/game" }, details = [ "This drill is ideal for players without a partner to practice with. First, stand approximately 6 feet from a wall and hit a long serve high against the wall.", "As the shuttle drops, the player can get into position underneath it and prepare to hit a clear back against the wall.", "This can be continued as long as possible, with players having the option to try backhand clears as well.", "Ensure that players have the proper grip and that the shuttle is being hit hard and high. Also ensure that the player's hips and shoulders are being fully rotated." ], source = "https://www.teachpe.com/sports-coaching/badminton/badminton-practice-games/wall-return" }


drillRecord : String -> Drill
drillRecord name =
    case name of
        "cover-on" ->
            coverOn

        "run-clear" ->
            runClear

        "wall-return" ->
            wallReturn

        _ ->
            { source = "", name = "Not Found", time = "", next = { name = "Go Home", href = "/" }, details = [ "" ] }


details : String -> Html msg
details contents =
    p [ class "mt-1" ] [ text contents ]


drillTemplate : Drill -> Page msg
drillTemplate drill model =
    [ Header.header { name = drill.next.name, href = drill.next.href }
    , div [ class "w-100" ] [ h3 [] [ text drill.name ], p [] [ text ("Estimated Time: " ++ drill.time) ] ]
    , div [ class "instructions" ] (List.map details drill.details)
    , div [] [ text "Source: ", a [ href drill.source ] [ text drill.source ] ]
    ]

Space Opera
===========

An online collaborative storytelling game. 

What is it?
===========

It is the first proof of concept of the "Turnstyles" game design principles. 
Principles that I intend to support with an engine and set of phone compatible web components.

The Turnstyles principles focus on games that mix the best features of online play with those of tabletop play.

They are designed for folk with busy lives, but who want to play a game with their friends, 
one that eventually tells a story.

[More](/design/turnstyles.md) on the "Turnstyles" game design principles 

There is much more to be said and discussed about with turnstyles and I'll eventually put that
 up and link to it, but now on to Space Opera.

Game Design
===========

The game design is broken up into phases, a very minimal first phase and a more complete first prototype.

We'll start with a single game with up to 8 players and 8 npc positions, plus two explicit gm positions. 
Eventually games should be able to reach up to about 40 or 50 players in a single game, 
but more than that might require players to keep track of too much even with a month long turn phase.                                                                                             

The Turnstyle is paralell, as opposed to sequential or realtime which are not long term goals the exception to this
is that diplomacy is done in pseudo-realtime.

The initial CommunalMode is freestyle as opposed to cooperative or competitive which are long term goals, 
though my assumption is that the initial playtesters will be playing largely cooperatively which is my hope 
for the default style, freestyle allows conflict between players and the engine should support that from the begining
just so that we can test out both cooperative and competitive styles as we wish. Cooperative and Competitive modes
will probably pair with differnt plot elements that encourage the communal style of play that the players have chosen.

There will be two initial map types, a point based stellar map and a hex based planetary map.

## Positions consist initially of
1. a ruler 
2. a race
3. 3 other leaders
4. some units
5. a faction
6. a map position
7. a generated or drawn planetary map

	C-Feature: someday the ruler might just be a governance type, 
	allowing for democracies, collectives, hives, packs or other mechanics, 
	for now we'll call this governance_type 'feudal'

## Races 
1. Humans
2. Arachnids
3. Robots
4. Spores

    (there are also ancients and grey to start, but not as pcs)

## Grey Factions 
1. good
2. bad
3. ugly (or chaos/irony)

Grey factions are npc prompts that try to pit players against one another or just cause trouble and interesting story
events in general.

## Maps
Maps are largely how someone determines how they are doing, 
so how big they are and what they display at various zoom levels is key. 	
Score can be based on story, plot points that translate to 'dramatic impact'. 
(fate or karma?) mysteries solved via plot garden story arcs but there are things that a player will always 
guage their progress on via the maps and so what is seen on the map is a sort of scoreboard

Things that a player is trying to determine from the maps are

1. who controls where
2. what you can see at locational privacy levels
    * player positions in general with markers and labels for general direction, but no boundaries?
    * environment and terrain
    * planetary and regional public (see all at once)
    * planetary and regional private (see one at a time)		
3. what you can see at plot levels
    * markers, such as ?
    * mysteries with descriptions (prelude, actions, midstatement, actions, conclusion)
    * story threads as it unfolds (based on transmission devices?)
    * hot spots, special important story threads
4. Trade status and economy
5. Regional Production Values
    * research
    * money
    * materials
    * population
    * mana (for esp?)
    * environment (habitability and terrain)


1. Stellar, one map that maxes out at 2560x1600
        A point map like in stars, but with the points as locations in hexes
        each point is a planet or asteroid or space station, etc that is controlled with the hex, 
        each position starts off with a home planet, points are seen at the start, 
        but planetary details can be seen after scouting. stellar environmental effects include 
        planet habitability and physics pockets which can change like in vernor vinge's books, 
        the map should have things like invading fleets, solar flare-ups, pirates, and mysteries

2. Planetary, one per planet visited that maxes out initially at 760x480. 
        A hex map like cruenti dei each hex is a region with locations in it 


## Plot Devices
Plot devices should have some properties
these properties might eventually match with game types
to describe it's size and scope 
    the quantity of players it affects
    method of distribution (random, from a direction, manually positioned)
    how it affects certain factions differently than others
    plot points with 
        decisions and effects
        location type(stellar, planetary, region, location)
    possible conclusions and how to trigger them		
    point values for the various conclusions based on 
        faction 
        race
        position
Plot devices are set up with three defaults on creation
A GM can 
    adjust the initial plot devices before the game starts
    add new plot devices as the game progresses 
    choose a path to follow explicitly
    override the results

prototype examples

1. ancient robot releases
2. pirates
3. gravitional flux	or dark matter

## Detail Views
* Map
* Leader (Leader Actions)
* Realm (Realm Actions)
* Army (Army Actions)
* Diplomacy (Exchange, Relations, Thread, History)
* Research
* Mysteries
* Rule
* Item
* Story at the Stellar Public and Private levels
* Story at the Position Public and Private levels
* Story at the Leader Public and Private levels

# Actions

## Realm Actions

* Send a Message    (continual)
* Propose Trade     (continual)
* Propose Alliance  (continual)
* Broadcast Message
* Research Item
* Upgrade Leader
* Upgrade Robot
* Upgrade Ship

## Region Actions (requires hex control)

* Colonize
* Terraform
* Upgrade Economy
* Upgrade Resource Mining
* Upgrated Research Facilities

## Unit Actions     Leader(suit) Robot(chassi) Ship(hull)

* Scout - like movement but into unexplored terrain, typically much slower       
* Move
* Investigate
* Mine
* Diplomacize
* Spy
       
Suits can allow a leader items like a research team, a mining crew, a ranged weapon, a melle weapon, items  
Leaders have their own small ships for free that can support a research team or mining crew, but generally not both.
Items can be things like bombs or scanners or research tools or any sort of mcguffin

Chassis the robot version of a suit

Hulls the ship version of a suit


Current Status
===========

Right now I'm working on 

* move this design content into it's own folder
* polishing the design of phase 1
* a quick swipe at the design of phase 2 to know where I'm going
* Login and hosting screens with authentication 
* the ability to draw hex maps
* a single stellar hex map
* a single planetary hex map
* ground troops and combat rules for human and arachnid forces
* A fog of war view of the map using authorization

Next up will be 

* the view to read and navigate a story which is synchronized to a map
* a plot device with mysteries placed on the map that triggers story events

Setup
===========
from the root

bundle install
rake db:migrate
rake db:setup

rails server -b 0.0.0.0 -p 3000 -e development

rake test will run the tests
         
                                                                                                                       
Thanks
===========
Thanks to Daniel Kehoe for his tutorials and startup scripts

John Cinnamond and Alex Korban for their fun Ruby videos on Pluralsight

David Black for "The Well Grounded Rubyist"

Dan Chak for "Enterprise Rails"

Obie Fernandez and friends for "The Rails 4 Way"
                             
Noel Rappin and his "Rails4 Test Perscriptions" book

The Tech Valley Ruby Brigade and Ruby and Rails communities in general for being friendly and making it such a reasonable climb for a client side guy to finally implement a personal server side project
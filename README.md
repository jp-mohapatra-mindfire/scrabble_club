# Scrabble Club

## Requirements

This demo currently works with:

* Ruby 2.4.9
* Rails 4.2.8
* MySql
* Gem twitter-bootswatch-rails

## Installation

Follow below steps to setup the application:

1.  Clone the repository
```
git clone https://github.com/jp-mohapatra-mindfire/scrabble_club.git
```
2. Install dependencies
```
bundle install
```
3. Migrate database

``` rake db:create ```
``` rake db:migrate ```
4. run application
```
rails s
```

## Implemented features

1. Create new player
2. Create new game with players
	A member’s profile screen showing their
		* number of wins
		* number of losses
		* their average score
		* their highest score, when and where it was scored, and against whom
3. A leader board screen to list the members with the top 10 average scores, for those
members who have played at least 10 matches. 

All recorded scrabble games are head to head matches between 2 players, the
player with the highest score at the end of the game wins.

##  Security prevention details
	
	* Security HTTP Headers
	* Referrer-Policy Security Header
	* Cross-Site Request Forgery
	* HTTPS Configuration
	* Throttling requests to a certain limit per minute
	* Strong parameters
	* Sanitized links in views

Most of the above comes default with rails, last 3 methods I have used on top them.




	
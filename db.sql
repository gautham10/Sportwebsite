CREATE DATABASE sports1;

USE sports1;

CREATE TABLE sportsinfo (
    id int auto_increment primary key,
    name varchar(30) not null unique,
    about varchar(2000) not null,
    background varchar(225)
);

CREATE TABLE aboutplayer (
    id int auto_increment primary key,
    sportsid int not null,
    name varchar(100) not null,
    about varchar(2000) not null,
    careerstats varchar(225),
    picture varchar(225)
);

CREATE TABLE teamandstats (
    id int auto_increment primary key,
    playerid int not null,
    entry varchar(225) not null
);

INSERT INTO sportsinfo (name, background, about) VALUES 
    ('BASKETBALL', 
    "https://www.spalding.com/on/demandware.static/-/Sites-spalding_us-Library/default/dw9e6180d8/images/basketballPicker/indoor.jpg",
    "Basketball is a team sport with limited contact. It requires people to play and communicate together as a team of five. The goal of the game is to score more points than the other team by shooting the ball in the basket This game can be played where there is a hoop and a basketball as shown in the background. This can be played indoors and outdoor and the playing surface will have markings that mark how many points will be awarded if the ball is shot in that area. It also marks the out of bounds lines. This game also has violations and fouls which make it challenging This is a general overview of basketball");
INSERT INTO sportsinfo (name, background, about) VALUES 
    ('FOOTBALL', 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQN6-L_5DiW3p-qrVcaGh28bgDQiTsk1yF1U9tvgweTiu6jHhM8Q",
    "Football is a team sport with contact. Each team has an offensive and defensive line. It is where two teams of eleven players that can play on the field. The objective of the game is to score more point than the other team before the game is over. There are two main ways of earning points which is either getting a touchdown or kicking a field goal. To play the game, there will be a field with markings of the touchdowns and yards. There is also be a post for field goals to be attempted and scored. You will need a football, gear, and helmet. This is all when playing professionally as you could play on a field with a football and some area marked as the touchdown area. This is a general overview of football.");
INSERT INTO sportsinfo (name, background, about) VALUES 
    ('SOCCER', 
    "https://media2.fdncms.com/eastbayexpress/imager/u/original/17703015/soccer-ball-ss-img.jpg",
    "Soccer is a team sport with limited contact. It has two teams of eleven whose goal is to score more goals than the other team. Soccer is played with a soccer ball and two goals on either side of the field. There are certain marking boundaries which make the game a little more interesting and challenge. There are also many rules that also make the game a better game. This is a general overview of soccer.");
INSERT INTO sportsinfo (name, background, about) VALUES 
    ('VOLLEYBALL', 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCvl8dWHyljI0RvJAbb5Zy06PXBbNP7E3XseM_rODJMZJCUYbl",
    "Volleyball is a team sport with no contact. It requires 6 people on a team to play with the goal being to score more point than the other team by grounding the ball. This requires a surface to play on which there are many surfaces an example is on the sand. This game has a few rules and skills necessary to play. This is a general overview of volleyball.");

INSERT INTO aboutplayer (sportsid, name, about, careerstats) VALUES 
    (1, 'MICHAEL JORDAN', "Michael Jordan is a famous basketball player who played 15 seasons in NBA and in that time won 6 NBA championships with the Chicago Bulls. He had gained many accolades while playing basketball.",
    "Career Stats: Points per game: 30.1  Rebounds per game: 6.2 Assists per game: 5.3");
INSERT INTO aboutplayer (sportsid, name, about, careerstats) VALUES 
    (2, 'JERRY RICE', "erry Rice was a wide receiver in the NFL. He is the Pro Football Hall of Fame and is called the greatest wide receiver and football player ever. He played 21 years in the NFL for 3 different teams who were the 49ers, Seahawks, and Raiders.",
    "Career Stats: Games Played: 284 Yards: 22,895 Receptions: 1549 Touchdowns:187");
INSERT INTO aboutplayer (sportsid, name, about, careerstats) VALUES 
    (3, 'PELE', "Pele has won 3 World Cups with Brazil. He has scored 77 goals in 91 matches playing for the Brazilian Team. He also is the third all-time top scorers in the World Cup with 12 goals. ",
    "Career Stats: Games Played: 1363 Goals: 1281");
INSERT INTO aboutplayer (sportsid, name, about, careerstats) VALUES
    (4, 'KARCH KIRALY', "Fill this in",
    "Fill this in as well");

INSERT INTO teamandstats (playerid, entry) VALUES
    (1, "Western Conference: Golden State Warriors Statistics: Points per game: 113.5  Rebounds per game: 43.5 Assists per game: 29.3");
INSERT INTO teamandstats (playerid, entry) VALUES
    (1, "Western Conference: Los Angeles Lakers Statistics: Points per game: 108.1 Rebounds per game: 46.4 &nbsp;Assists per game: 23.8 ");
INSERT INTO teamandstats (playerid, entry) VALUES
    (1, "Eastern Conference: Toronto Raptors Statistics: Points per game: 111.7 Rebounds per game: 44.0 &nbsp;Assists per game: 24.3");
INSERT INTO teamandstats (playerid, entry) VALUES
    (1, "Eastern Conference: Boston Celtics Statistics: Points per game: 104.0 Rebounds per game: 44.5 &nbsp;Assists per game: 22.5");
    
INSERT INTO teamandstats (playerid, entry) VALUES
    (2, "New England Patriots: 49 Touchdowns");
INSERT INTO teamandstats (playerid, entry) VALUES
    (2, "PIttsburg Steelers: 43 Touchdowns");
INSERT INTO teamandstats (playerid, entry) VALUES
    (2, "San Francisco 49ers: 31 Touchdowns");
INSERT INTO teamandstats (playerid, entry) VALUES
    (2, "Denver Broncos: 31 Touchdowns");

INSERT INTO teamandstats (playerid, entry) VALUES
    (3, "Brazil: Won 5 World Cups");
INSERT INTO teamandstats (playerid, entry) VALUES
    (3, "Germany: Won 4 World Cups");
INSERT INTO teamandstats (playerid, entry) VALUES
    (3, "France: Won 2 World Cups");
INSERT INTO teamandstats (playerid, entry) VALUES
    (3, "England: Won 1 World Cup");
    
INSERT INTO teamandstats (playerid, entry) VALUES
    (4, "Summer Olympics 2016");
INSERT INTO teamandstats (playerid, entry) VALUES
    (4, "U.S.A: 3 Gold Medals");
INSERT INTO teamandstats (playerid, entry) VALUES
    (4, "Japan: 3 Gold Medals");
INSERT INTO teamandstats (playerid, entry) VALUES
    (4, "Brazil 3 Gold Medals");
    
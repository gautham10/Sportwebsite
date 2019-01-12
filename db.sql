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
    sportsid int not null,
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

INSERT INTO aboutplayer (sportsid, name, about, careerstats, picture) VALUES 
    (1, 'MICHAEL JORDAN', "Michael Jordan is a famous basketball player who played 15 seasons in NBA and in that time won 6 NBA championships with the Chicago Bulls. He had gained many accolades while playing basketball. Jordan won 6 MVPs and 6 Final MVPs. He would never allow the NBA Finals go to a game 7. He also had a signature move which was his fadeaway jump shot. He is recognized as the greatest basketball player of all time with his prolific scoring. Also, his agressiveness to drive to the baskets made him unstoppable and his ability to talk trash scared opponents. Today, he is retired and is in the Basketball Hall of Fame.",
    "Career Stats: Points per game: 30.1  Rebounds per game: 6.2 Assists per game: 5.3",
    "https://images.psacard.com/s3/cu-psa/autographfacts/michael-jordan-signed-photo-1244.jpg?h=1000");
INSERT INTO aboutplayer (sportsid, name, about, careerstats, picture) VALUES 
    (1, "LARRY BIRD", "Larry Bird played for the Boston Cletics for 13 seasons and has won many accolades while playing in Boston Larry bird is now retired and is now in the Basketball Hall of Fame. He won three NBA championships with three MVPs. He was an All Star and was considered on of the greatest players and pure shooters. Larry Bird is still very famous and revered as one of the greatest.",
    "Career Stats: Points per game: 24.3  Rebounds per game: 10.0  Assists per game: 6.3",
    "https://images.psacard.com/s3/cu-psa/autographfacts/larry-bird-signed-photo-1135.jpg?h=1000");
INSERT INTO aboutplayer (sportsid, name, about, careerstats, picture) VALUES 
    (1, "MAGIC JOHNSON", "Magic Johnson played for the Los Angeles Lakers for 12 seasons. He won five NBA championships and won three MVPs along th way. He was Larry Bird’s biggest rival. He was a dominant and considered one of the best players in baskeball and the greatest passer of all time. He also was one of the best point guards in the NBA. Today, he has retired and in the the Hall of Fame and will be recognized as one of the greatest to play basketball.",
    "Career Stats: Points per game: 19.5  Rebounds per game: 7.2  Assists per game: 11.2",
    "https://images.psacard.com/s3/cu-psa/autographfacts/magic-johnson-signed-photo-1213.jpg?h=1000");
INSERT INTO aboutplayer (sportsid, name, about, careerstats, picture) VALUES 
    (2, 'JERRY RICE', "Jerry Rice was a wide receiver in the NFL. He is the Pro Football Hall of Fame and is called the greatest wide receiver and football player ever. He played 21 years in the NFL for 3 different teams who were the 49ers, Seahawks, and Raiders.",
    "Career Stats: Games Played: 284 Yards: 22,895 Receptions: 1549 Touchdowns:187",
    "https://images.psacard.com/s3/cu-psa/autographfacts/jerry-rice-signed-photo-12622.jpg?h=1000");
INSERT INTO aboutplayer (sportsid, name, about, careerstats, picture) VALUES 
    (2, "JOHN ELWAY", "John Elway is considered on of the greates quarterbacks to play football. He played for 16 season with Denver Broncos for most of his carreer in the NFL. He won two Super Bowl championships with the Denver Broncos. John Elway won an MVP and is a 9 time Pro Bowler. He is also ranked second all time in passing yards, attempt and completion among players in the NFL. John Elway has retired after 16 years and is in the Pro Football Hall of Fame.",
    "Career Stats: Games Played: 284  Passing Yards: 51,475  Touchdowns: 300  Passing Completion percentage: 56.9%",
    "https://images.psacard.com/s3/cu-psa/autographfacts/john-elway-signed-photo-1452.jpg?h=1000");
INSERT INTO aboutplayer (sportsid, name, about, careerstats, picture) VALUES 
    (2, "JOE MONTANA", "Joe Montana is one of the most well-known quarterbacks. He played for 14 season is the NFL for the San Francisco 49ers for most of his career. He won four Super Bowl championships with the 49ers and was the MVP for all four Super Bowls. He was a 6 time Pro Bowler and two time MVP. He was the fifth quarterback that passes for more than 40,000 yards, completed 3,409 passes which is third all-time. Joe Montana retired after 14 seasons and is in the Pro Football Hall Of Fame.",
    "Career Stats: Games Played: 192  Passing Yards: 40,551  Touchdowns: 273  Passing Completion percentage: 63.2",
    "https://images.psacard.com/s3/cu-psa/autographfacts/joe-montana-signed-photo-1506.jpg?h=1000");
INSERT INTO aboutplayer (sportsid, name, about, careerstats, picture) VALUES 
    (3, 'PELE', "Pele has won 3 World Cups with Brazil. He has scored 77 goals in 91 matches playing for the Brazilian Team. He also is the third all-time top scorers in the World Cup with 12 goals. ",
    "Career Stats: Games Played: 1363 Goals: 1281",
    "https://images.psacard.com/s3/cu-psa/autographfacts/pele-signed-photo-1754.jpg?h=1000");
INSERT INTO aboutplayer (sportsid, name, about, careerstats, picture) VALUES 
    (3, "LIONEL MESSI", "Lionel Messi is a well known soccer player. He plays right wing on the Argentinian national team and on FC Barcelona.  Lionel Messi is a prolific scorer as he is a 16 time top scorer with FC Barcelona. He has won player of the year three times with Barcelona and Argentina national team. He was also the FIFA’s World Player of the Year and FIFA Club World Cup Final Most Valuable Player. Lionel Messi also has the most goals in a World Cup with four tied with Christiano Ronaldo. Lionel Messi has earned a lot of awards and has become very well-known.",
    "Career Stats: Goals: 585 with FC Barcelona; 81 with Argentina National Team",
    "https://www.biography.com/.image/c_limit%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_500/MTQ4MDU5NDU0MzgwNzEzNDk0/lionel_messi_photo_josep_lago_afp_getty_images_664928892_resizedjpg.jpg");
INSERT INTO aboutplayer (sportsid, name, about, careerstats, picture) VALUES 
    (3, "CHRISTIANO RONALDO", "Christiano Ronaldo is a famous soccer player. He plays forward on the Portugal national team and on Juventus. Ronaldo  has earned many accolades and holds many records. He is the most expensive soccer player in soccer. He has most FIFA Ballon d'Or awardswith five tied withwith Lionel Messi. He has the most World Soccer Player of the Year awards with five and most IFFHS World's best top goal scorer award with four of these awards. He has won many more awards but here are the most significant ones.", 
    "Career Stats: Goals: 588 with all his clubs; 85 with Portugal National Team",
    "https://upload.wikimedia.org/wikipedia/commons/3/3d/C_Ronaldo.jpg");

INSERT INTO aboutplayer (sportsid, name, about, careerstats, picture) VALUES
    (4, 'KARCH KIRALY', "Karch Kiraly is the one of the greatest volleyball players of all time. He was inducted into the International Volleyball Hall of Fame. Karch Kiraly gained lots of accolades when he played volleynall. Some accolades he gained were that he was a 3 time AVP Best Offensive Player, AVP Best Defensive Player, and a 6 time AVP MVP. He also won gold medals during summer olympics for beach volleyball",
    "Money Earned: $3,202,989",
    "https://cdn3.sportngin.com/attachments/photo/6910-106092446/Karch_Kiraly_large.jpg");
INSERT INTO aboutplayer (sportsid, name, about, careerstats, picture) VALUES
    (4, "MATT ANDERSON", "Matt Anderson is an American volleyball player, a member of the United States men's national volleyball team and Russian club Zenit Kazan, a participant of the Olympic Games (2012, 2016), bronze medalist of the 2016 Olympic Games, 2013 NORCECA Champion, a gold medalist of the 2008 Pan American Cup, 2014 World League and 2015 World Cup."
    "Money Earned: $850,000",
    "http://www.spikingforautism.com/uploads/5/6/7/4/56748185/745091_orig.jpg");
INSERT INTO aboutplayer (sportsid, name, about, careerstats, picture) VALUES
    (4, "WILFREDO LEON", "Aaron Russell is an American volleyball player, a member of the United States men's national volleyball team and Italian club Diatec Trentino. He was part of the bronze medalist winning USA team at the 2016 Olympic Games.",
    "Money Earned: $1,900,000",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Zenit_Kazan_vs_Halkbank_-_CEV_Men%27s_Volleyball_Champions_League_%2823547482665%29.jpg/1024px-Zenit_Kazan_vs_Halkbank_-_CEV_Men%27s_Volleyball_Champions_League_%2823547482665%29.jpg");
    
INSERT INTO teamandstats (sportsid, entry) VALUES
    (1, "Golden State Warriors: Points per game: 113.5  Rebounds per game: 43.5 Assists per game: 29.3");
INSERT INTO teamandstats (sportsid, entry) VALUES
    (1, "Los Angeles Lakers: Points per game: 108.1 Rebounds per game: 46.4 &nbsp;Assists per game: 23.8 ");
INSERT INTO teamandstats (sportsid, entry) VALUES
    (1, "Toronto Raptors: Points per game: 111.7 Rebounds per game: 44.0 &nbsp;Assists per game: 24.3");
INSERT INTO teamandstats (sportsid, entry) VALUES
    (1, "Boston Celtics: Points per game: 104.0 Rebounds per game: 44.5 &nbsp;Assists per game: 22.5");
    
INSERT INTO teamandstats (sportsid, entry) VALUES
    (2, "New England Patriots: 49 Touchdowns");
INSERT INTO teamandstats (sportsid, entry) VALUES
    (2, "PIttsburg Steelers: 43 Touchdowns");
INSERT INTO teamandstats (sportsid, entry) VALUES
    (2, "San Francisco 49ers: 31 Touchdowns");
INSERT INTO teamandstats (sportsid, entry) VALUES
    (2, "Denver Broncos: 31 Touchdowns");

INSERT INTO teamandstats (sportsid, entry) VALUES
    (3, "Brazil: Won 5 World Cups");
INSERT INTO teamandstats (sportsid, entry) VALUES
    (3, "Germany: Won 4 World Cups");
INSERT INTO teamandstats (sportsid, entry) VALUES
    (3, "France: Won 2 World Cups");
INSERT INTO teamandstats (sportsid, entry) VALUES
    (3, "England: Won 1 World Cup");
    
INSERT INTO teamandstats (sportsid, entry) VALUES
    (4, "Summer Olympics 2016");
INSERT INTO teamandstats (sportsid, entry) VALUES
    (4, "U.S.A: 3 Gold Medals");
INSERT INTO teamandstats (sportsid, entry) VALUES
    (4, "Japan: 3 Gold Medals");
INSERT INTO teamandstats (sportsid, entry) VALUES
    (4, "Brazil 3 Gold Medals");
    
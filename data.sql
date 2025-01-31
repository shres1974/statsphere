-- data.sql
-- Populating the StatSphere database with comprehensive sample data

-- Insert Sports
INSERT INTO Sport(name) VALUES ('Football');
INSERT INTO Sport(name) VALUES ('Basketball');

-- Insert Leagues
-- Football Leagues
INSERT INTO League(sport_id, name) VALUES (1, 'NFL');
INSERT INTO League(sport_id, name) VALUES (1, 'CFL'); -- Canadian Football League
-- Basketball Leagues
INSERT INTO League(sport_id, name) VALUES (2, 'NBA');
INSERT INTO League(sport_id, name) VALUES (2, 'WNBA'); -- Women's National Basketball Association

-- Insert Seasons
-- NFL Seasons
INSERT INTO Season(league_id, year) VALUES (1, 2021);
INSERT INTO Season(league_id, year) VALUES (1, 2022);
-- CFL Seasons
INSERT INTO Season(league_id, year) VALUES (2, 2021);
INSERT INTO Season(league_id, year) VALUES (2, 2022);
-- NBA Seasons
INSERT INTO Season(league_id, year) VALUES (3, 2021);
INSERT INTO Season(league_id, year) VALUES (3, 2022);
-- WNBA Seasons
INSERT INTO Season(league_id, year) VALUES (4, 2021);
INSERT INTO Season(league_id, year) VALUES (4, 2022);

-- Insert Teams
-- NFL Teams
INSERT INTO Team(league_id, name) VALUES (1, 'Tampa Bay Buccaneers');
INSERT INTO Team(league_id, name) VALUES (1, 'Dallas Cowboys');
INSERT INTO Team(league_id, name) VALUES (1, 'New England Patriots');
INSERT INTO Team(league_id, name) VALUES (1, 'Green Bay Packers');
-- CFL Teams
INSERT INTO Team(league_id, name) VALUES (2, 'Toronto Argonauts');
INSERT INTO Team(league_id, name) VALUES (2, 'Calgary Stampeders');
INSERT INTO Team(league_id, name) VALUES (2, 'Montreal Alouettes');
INSERT INTO Team(league_id, name) VALUES (2, 'Ottawa Redblacks');
-- NBA Teams
INSERT INTO Team(league_id, name) VALUES (3, 'Los Angeles Lakers');
INSERT INTO Team(league_id, name) VALUES (3, 'Boston Celtics');
INSERT INTO Team(league_id, name) VALUES (3, 'Chicago Bulls');
INSERT INTO Team(league_id, name) VALUES (3, 'Golden State Warriors');
-- WNBA Teams
INSERT INTO Team(league_id, name) VALUES (4, 'Seattle Storm');
INSERT INTO Team(league_id, name) VALUES (4, 'Las Vegas Aces');
INSERT INTO Team(league_id, name) VALUES (4, 'New York Liberty');
INSERT INTO Team(league_id, name) VALUES (4, 'Chicago Sky');

-- Insert Players
-- NFL Players (player_id: 1-10)
INSERT INTO Player(name, position) VALUES ('Tom Brady', 'Quarterback');
INSERT INTO Player(name, position) VALUES ('Dak Prescott', 'Quarterback');
INSERT INTO Player(name, position) VALUES ('Aaron Rodgers', 'Quarterback');
INSERT INTO Player(name, position) VALUES ('Aaron Donald', 'Defensive Tackle');
INSERT INTO Player(name, position) VALUES ('Derrick Henry', 'Running Back');
INSERT INTO Player(name, position) VALUES ('Stefon Diggs', 'Wide Receiver');
INSERT INTO Player(name, position) VALUES ('Travis Kelce', 'Tight End');
INSERT INTO Player(name, position) VALUES ('Jalen Ramsey', 'Cornerback');
INSERT INTO Player(name, position) VALUES ('Russell Wilson', 'Quarterback');
INSERT INTO Player(name, position) VALUES ('Patrick Mahomes', 'Quarterback');

-- CFL Players (player_id: 11-15)
INSERT INTO Player(name, position) VALUES ('Bo Levi Mitchell', 'Quarterback');
INSERT INTO Player(name, position) VALUES ('E.J. Manuel', 'Wide Receiver');
INSERT INTO Player(name, position) VALUES ('Nick Arbuckle', 'Quarterback');
INSERT INTO Player(name, position) VALUES ('Sean McEwen', 'Defensive Back');
INSERT INTO Player(name, position) VALUES ('Jeremiah Masoli', 'Quarterback');

-- NBA Players (player_id: 16-25)
INSERT INTO Player(name, position) VALUES ('LeBron James', 'Small Forward');
INSERT INTO Player(name, position) VALUES ('Stephen Curry', 'Point Guard');
INSERT INTO Player(name, position) VALUES ('Kevin Durant', 'Power Forward');
INSERT INTO Player(name, position) VALUES ('Giannis Antetokounmpo', 'Power Forward');
INSERT INTO Player(name, position) VALUES ('James Harden', 'Shooting Guard');
INSERT INTO Player(name, position) VALUES ('Kawhi Leonard', 'Small Forward');
INSERT INTO Player(name, position) VALUES ('Luka Doncic', 'Shooting Guard');
INSERT INTO Player(name, position) VALUES ('Nikola Jokic', 'Center');
INSERT INTO Player(name, position) VALUES ('Joel Embiid', 'Center');
INSERT INTO Player(name, position) VALUES ('Damian Lillard', 'Point Guard');

-- WNBA Players (player_id: 26-30)
INSERT INTO Player(name, position) VALUES ('Breanna Stewart', 'Forward');
INSERT INTO Player(name, position) VALUES ('A’ja Wilson', 'Forward');
INSERT INTO Player(name, position) VALUES ('Sabrina Ionescu', 'Guard');
INSERT INTO Player(name, position) VALUES ('Elena Delle Donne', 'Forward');
INSERT INTO Player(name, position) VALUES ('Alyssa Thomas', 'Center');

-- Insert Games
-- NFL Games for Seasons 2021 and 2022 (game_id: 1-10)
-- Season 2021 (season_id=1)
INSERT INTO Game(season_id, date) VALUES (1, '2021-09-09');
INSERT INTO Game(season_id, date) VALUES (1, '2021-10-03');
INSERT INTO Game(season_id, date) VALUES (1, '2021-11-14');
INSERT INTO Game(season_id, date) VALUES (1, '2021-12-05');
INSERT INTO Game(season_id, date) VALUES (1, '2021-12-26');
-- Season 2022 (season_id=2)
INSERT INTO Game(season_id, date) VALUES (2, '2022-09-08');
INSERT INTO Game(season_id, date) VALUES (2, '2022-10-02');
INSERT INTO Game(season_id, date) VALUES (2, '2022-11-13');
INSERT INTO Game(season_id, date) VALUES (2, '2022-12-04');
INSERT INTO Game(season_id, date) VALUES (2, '2022-12-25');

-- CFL Games for Seasons 2021 and 2022 (game_id: 11-15)
-- Season 2021 (season_id=3)
INSERT INTO Game(season_id, date) VALUES (3, '2021-06-25');
INSERT INTO Game(season_id, date) VALUES (3, '2021-07-02');
INSERT INTO Game(season_id, date) VALUES (3, '2021-07-09');
INSERT INTO Game(season_id, date) VALUES (3, '2021-07-16');
INSERT INTO Game(season_id, date) VALUES (3, '2021-07-23');
-- Season 2022 (season_id=4)
INSERT INTO Game(season_id, date) VALUES (4, '2022-06-24');
INSERT INTO Game(season_id, date) VALUES (4, '2022-07-01');
INSERT INTO Game(season_id, date) VALUES (4, '2022-07-08');
INSERT INTO Game(season_id, date) VALUES (4, '2022-07-15');
INSERT INTO Game(season_id, date) VALUES (4, '2022-07-22');

-- NBA Games for Seasons 2021 and 2022 (game_id: 16-20)
-- Season 2021 (season_id=5)
INSERT INTO Game(season_id, date) VALUES (5, '2021-10-19');
INSERT INTO Game(season_id, date) VALUES (5, '2021-11-07');
INSERT INTO Game(season_id, date) VALUES (5, '2021-12-16');
INSERT INTO Game(season_id, date) VALUES (5, '2021-12-27');
INSERT INTO Game(season_id, date) VALUES (5, '2022-01-07');
-- Season 2022 (season_id=6)
INSERT INTO Game(season_id, date) VALUES (6, '2022-10-19');
INSERT INTO Game(season_id, date) VALUES (6, '2022-11-06');
INSERT INTO Game(season_id, date) VALUES (6, '2022-12-15');
INSERT INTO Game(season_id, date) VALUES (6, '2022-12-26');
INSERT INTO Game(season_id, date) VALUES (6, '2023-01-06');

-- WNBA Games for Seasons 2021 and 2022 (game_id: 21-25)
-- Season 2021 (season_id=7)
INSERT INTO Game(season_id, date) VALUES (7, '2021-05-14');
INSERT INTO Game(season_id, date) VALUES (7, '2021-06-06');
INSERT INTO Game(season_id, date) VALUES (7, '2021-06-20');
INSERT INTO Game(season_id, date) VALUES (7, '2021-07-04');
INSERT INTO Game(season_id, date) VALUES (7, '2021-07-18');
-- Season 2022 (season_id=8)
INSERT INTO Game(season_id, date) VALUES (8, '2022-05-13');
INSERT INTO Game(season_id, date) VALUES (8, '2022-06-05');
INSERT INTO Game(season_id, date) VALUES (8, '2022-06-19');
INSERT INTO Game(season_id, date) VALUES (8, '2022-07-03');
INSERT INTO Game(season_id, date) VALUES (8, '2022-07-17');

-- Insert PlayerTeam Associations
-- NFL Players with Teams
INSERT INTO PlayerTeam(player_id, team_id, start_date, end_date) VALUES (1, 1, '2020-01-01', '2022-03-20'); -- Tom Brady -> Buccaneers
INSERT INTO PlayerTeam(player_id, team_id, start_date, end_date) VALUES (2, 2, '2016-01-01', NULL); -- Dak Prescott -> Cowboys
INSERT INTO PlayerTeam(player_id, team_id, start_date, end_date) VALUES (3, 3, '2021-04-25', NULL); -- Aaron Rodgers -> Patriots
INSERT INTO PlayerTeam(player_id, team_id, start_date, end_date) VALUES (4, 4, '2014-05-12', NULL); -- Aaron Donald -> Packers
INSERT INTO PlayerTeam(player_id, team_id, start_date, end_date) VALUES (5, 1, '2018-03-01', NULL); -- Derrick Henry -> Buccaneers
INSERT INTO PlayerTeam(player_id, team_id, start_date, end_date) VALUES (6, 2, '2019-07-15', NULL); -- Stefon Diggs -> Cowboys
INSERT INTO PlayerTeam(player_id, team_id, start_date, end_date) VALUES (7, 2, '2013-07-20', NULL); -- Travis Kelce -> Cowboys
INSERT INTO PlayerTeam(player_id, team_id, start_date, end_date) VALUES (8, 2, '2019-04-10', NULL); -- Jalen Ramsey -> Cowboys
INSERT INTO PlayerTeam(player_id, team_id, start_date, end_date) VALUES (9, 1, '2020-03-30', NULL); -- Russell Wilson -> Buccaneers
INSERT INTO PlayerTeam(player_id, team_id, start_date, end_date) VALUES (10, 1, '2021-04-30', NULL); -- Patrick Mahomes -> Buccaneers

-- CFL Players with Teams
INSERT INTO PlayerTeam(player_id, team_id, start_date, end_date) VALUES (11, 5, '2017-05-10', NULL); -- Bo Levi Mitchell -> Argonauts
INSERT INTO PlayerTeam(player_id, team_id, start_date, end_date) VALUES (12, 5, '2020-06-15', NULL); -- E.J. Manuel -> Argonauts
INSERT INTO PlayerTeam(player_id, team_id, start_date, end_date) VALUES (13, 6, '2018-07-20', NULL); -- Nick Arbuckle -> Stampeders
INSERT INTO PlayerTeam(player_id, team_id, start_date, end_date) VALUES (14, 7, '2019-08-25', NULL); -- Sean McEwen -> Alouettes
INSERT INTO PlayerTeam(player_id, team_id, start_date, end_date) VALUES (15, 8, '2021-09-30', NULL); -- Jeremiah Masoli -> Redblacks

-- NBA Players with Teams
INSERT INTO PlayerTeam(player_id, team_id, start_date, end_date) VALUES (16, 9, '2010-07-01', NULL); -- LeBron James -> Lakers
INSERT INTO PlayerTeam(player_id, team_id, start_date, end_date) VALUES (17, 10, '2012-07-01', NULL); -- Stephen Curry -> Warriors
INSERT INTO PlayerTeam(player_id, team_id, start_date, end_date) VALUES (18, 11, '2016-07-01', NULL); -- Kevin Durant -> Bulls
INSERT INTO PlayerTeam(player_id, team_id, start_date, end_date) VALUES (19, 12, '2013-07-01', NULL); -- Giannis Antetokounmpo -> Warriors
INSERT INTO PlayerTeam(player_id, team_id, start_date, end_date) VALUES (20, 13, '2011-07-01', NULL); -- James Harden -> Storm

-- WNBA Players with Teams
INSERT INTO PlayerTeam(player_id, team_id, start_date, end_date) VALUES (26, 13, '2016-05-20', NULL); -- Breanna Stewart -> Storm
INSERT INTO PlayerTeam(player_id, team_id, start_date, end_date) VALUES (27, 14, '2018-06-10', NULL); -- A’ja Wilson -> Aces
INSERT INTO PlayerTeam(player_id, team_id, start_date, end_date) VALUES (28, 15, '2020-07-15', NULL); -- Sabrina Ionescu -> Liberty
INSERT INTO PlayerTeam(player_id, team_id, start_date, end_date) VALUES (29, 16, '2014-05-25', NULL); -- Elena Delle Donne -> Sky
INSERT INTO PlayerTeam(player_id, team_id, start_date, end_date) VALUES (30, 16, '2015-07-30', NULL); -- Alyssa Thomas -> Sky

-- Insert PlayerGameStats
-- NFL PlayerGameStats (game_id:1-10)
INSERT INTO PlayerGameStats(player_id, game_id, points, passing_yards, rushing_yards) VALUES (1, 1, 31, 379, 0); -- Tom Brady
INSERT INTO PlayerGameStats(player_id, game_id, points, passing_yards, rushing_yards) VALUES (2, 1, 29, 403, 10); -- Dak Prescott
INSERT INTO PlayerGameStats(player_id, game_id, points, passing_yards, rushing_yards) VALUES (3, 2, 28, 350, 5); -- Aaron Rodgers
INSERT INTO PlayerGameStats(player_id, game_id, points, passing_yards, rushing_yards) VALUES (4, 3, 0, 0, 0); -- Aaron Donald
INSERT INTO PlayerGameStats(player_id, game_id, points, passing_yards, rushing_yards) VALUES (5, 4, 24, 250, 100); -- Derrick Henry
INSERT INTO PlayerGameStats(player_id, game_id, points, passing_yards, rushing_yards) VALUES (6, 5, 17, 150, 0); -- Stefon Diggs
INSERT INTO PlayerGameStats(player_id, game_id, points, passing_yards, rushing_yards) VALUES (7, 6, 14, 0, 0); -- Travis Kelce
INSERT INTO PlayerGameStats(player_id, game_id, points, passing_yards, rushing_yards) VALUES (8, 7, 0, 0, 0); -- Jalen Ramsey
INSERT INTO PlayerGameStats(player_id, game_id, points, passing_yards, rushing_yards) VALUES (9, 8, 28, 320, 15); -- Russell Wilson
INSERT INTO PlayerGameStats(player_id, game_id, points, passing_yards, rushing_yards) VALUES (10, 9, 35, 400, 20); -- Patrick Mahomes

-- CFL PlayerGameStats (game_id:11-15)
INSERT INTO PlayerGameStats(player_id, game_id, points, passing_yards, rushing_yards) VALUES (11, 11, 21, 350, 30); -- Bo Levi Mitchell
INSERT INTO PlayerGameStats(player_id, game_id, points, passing_yards, rushing_yards) VALUES (12, 12, 18, 300, 25); -- E.J. Manuel
INSERT INTO PlayerGameStats(player_id, game_id, points, passing_yards, rushing_yards) VALUES (13, 13, 0, 0, 0); -- Nick Arbuckle
INSERT INTO PlayerGameStats(player_id, game_id, points, passing_yards, rushing_yards) VALUES (14, 14, 0, 0, 0); -- Sean McEwen
INSERT INTO PlayerGameStats(player_id, game_id, points, passing_yards, rushing_yards) VALUES (15, 15, 24, 310, 40); -- Jeremiah Masoli

-- NBA PlayerGameStats (game_id:16-20)
INSERT INTO PlayerGameStats(player_id, game_id, points, passing_yards, rushing_yards) VALUES (16, 16, 30, 0, 0); -- LeBron James
INSERT INTO PlayerGameStats(player_id, game_id, points, passing_yards, rushing_yards) VALUES (17, 17, 25, 0, 0); -- Stephen Curry
INSERT INTO PlayerGameStats(player_id, game_id, points, passing_yards, rushing_yards) VALUES (18, 18, 28, 0, 0); -- Kevin Durant
INSERT INTO PlayerGameStats(player_id, game_id, points, passing_yards, rushing_yards) VALUES (19, 19, 35, 0, 0); -- Giannis Antetokounmpo
INSERT INTO PlayerGameStats(player_id, game_id, points, passing_yards, rushing_yards) VALUES (20, 20, 22, 0, 0); -- James Harden

-- WNBA PlayerGameStats (game_id:21-25)
INSERT INTO PlayerGameStats(player_id, game_id, points, passing_yards, rushing_yards) VALUES (26, 21, 24, 0, 0); -- Breanna Stewart
INSERT INTO PlayerGameStats(player_id, game_id, points, passing_yards, rushing_yards) VALUES (27, 22, 20, 0, 0); -- A’ja Wilson
INSERT INTO PlayerGameStats(player_id, game_id, points, passing_yards, rushing_yards) VALUES (28, 23, 18, 0, 0); -- Sabrina Ionescu
INSERT INTO PlayerGameStats(player_id, game_id, points, passing_yards, rushing_yards) VALUES (29, 24, 22, 0, 0); -- Elena Delle Donne
INSERT INTO PlayerGameStats(player_id, game_id, points, passing_yards, rushing_yards) VALUES (30, 25, 16, 0, 0); -- Alyssa Thomas

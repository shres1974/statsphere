DROP TABLE IF EXISTS PlayerGameStats;
DROP TABLE IF EXISTS PlayerTeam;
DROP TABLE IF EXISTS Game;
DROP TABLE IF EXISTS Player;
DROP TABLE IF EXISTS Team;
DROP TABLE IF EXISTS Season;
DROP TABLE IF EXISTS League;
DROP TABLE IF EXISTS Sport;

CREATE TABLE Sport (
    sport_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
);

CREATE TABLE League (
    league_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sport_id INTEGER NOT NULL,
    name TEXT NOT NULL,
    FOREIGN KEY(sport_id) REFERENCES Sport(sport_id)
);

CREATE TABLE Season (
    season_id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER NOT NULL,
    year INTEGER NOT NULL,
    FOREIGN KEY(league_id) REFERENCES League(league_id)
);

CREATE TABLE Team (
    team_id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER NOT NULL,
    name TEXT NOT NULL,
    FOREIGN KEY(league_id) REFERENCES League(league_id)
);

CREATE TABLE Player (
    player_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    position TEXT
);

CREATE TABLE Game (
    game_id INTEGER PRIMARY KEY AUTOINCREMENT,
    season_id INTEGER NOT NULL,
    date TEXT NOT NULL,
    FOREIGN KEY(season_id) REFERENCES Season(season_id)
);

CREATE TABLE PlayerTeam (
    player_id INTEGER NOT NULL,
    team_id INTEGER NOT NULL,
    start_date TEXT,
    end_date TEXT,
    PRIMARY KEY(player_id, team_id),
    FOREIGN KEY(player_id) REFERENCES Player(player_id),
    FOREIGN KEY(team_id) REFERENCES Team(team_id)
);

CREATE TABLE PlayerGameStats (
    player_id INTEGER NOT NULL,
    game_id INTEGER NOT NULL,
    points INTEGER,
    passing_yards INTEGER,
    rushing_yards INTEGER,
    PRIMARY KEY(player_id, game_id),
    FOREIGN KEY(player_id) REFERENCES Player(player_id),
    FOREIGN KEY(game_id) REFERENCES Game(game_id)
);

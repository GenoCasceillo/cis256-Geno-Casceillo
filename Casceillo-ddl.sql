
CREATE TABLE player (
  player_ID VARCHAR(20),
  name VARCHAR(50) NOT NULL,
  rating VARCHAR(10) NOT NULL,
  PRIMARY KEY(player_ID)
);

CREATE TABLE Number (
  player_ID VARCHAR(20),
  number VARCHAR(50) NOT NULL,
  FOREIGN KEY (player_ID) REFERENCES player,
  PRIMARY KEY(player_ID)
);

CREATE TABLE Position (
  player_ID VARCHAR(20),
  Position VARCHAR(10) NOT NULL,
  FOREIGN KEY (player_ID) REFERENCES player,
  PRIMARY KEY(player_ID)
);

CREATE TABLE Stats (
  player_ID VARCHAR(20),
  goals_scored VARCHAR(20) NOT NULL,
  groundballs VARCHAR(30) NOT NULL,
  caused_turnovers VARCHAR(30) NOT NULL,
  faceoff_wins VARCHAR(15) NOT NULL,
  FOREIGN KEY (player_ID) REFERENCES player,
  PRIMARY KEY(player_ID)
);

CREATE TABLE Team (
  Team_ID VARCHAR(20),
  Team_name VARCHAR(50) NOT NULL,
  year_established INT NOT NULL,
  PRIMARY KEY (Team_ID)
);

CREATE TABLE Coaches (
  Team_ID VARCHAR(20),
  coach_name VARCHAR(50),
  current_players INT NOT NULL,
  year_started INT NOT NULL,
  FOREIGN KEY (Team_ID) REFERENCES Team,
  PRIMARY KEY(Team_ID)
);

CREATE TABLE player_team (
  Team_ID VARCHAR(20),
  player_ID VARCHAR(20),
  FOREIGN KEY(player_ID) REFERENCES player,
  FOREIGN KEY (Team_ID) REFERENCES Team,
  PRIMARY KEY(player_ID, Team_ID)
);

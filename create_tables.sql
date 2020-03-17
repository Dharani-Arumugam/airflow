CREATE TABLE IF NOT EXISTS staging_events (
     artist 				varchar(256)
    ,auth			        varchar(256)
    ,firstName				varchar(256)
    ,gender 				varchar(256)
    ,itemInSession	    	int4
    ,lastName 				varchar(256)
    ,length 				float
    ,level 					varchar(256)
    ,location				varchar(256)
    ,method 				varchar(256)
    ,page 					varchar(256)
    ,registration			float
    ,sessionId 				int4
    ,song 					varchar(256)
    ,status 				int4
    ,ts						varchar(256)
    ,userAgent				varchar(256)
    ,userId			   		int4
)

CREATE TABLE IF NOT EXISTS staging_songs (
     num_songs 			 int4
    ,artist_id 			 varchar(256)
    ,artist_latitude 	 varchar(256)
    ,artist_longitude 	 varchar(256)
    ,artist_location	 varchar(256)
    ,artist_name		 varchar(256)
    ,song_id			 varchar(256)
    ,title				 varchar(256)
    ,duration			 float
    ,year				 int4
)

CREATE TABLE IF NOT EXISTS song (
     song_id 			varchar(256) 	PRIMARY KEY
    ,title 				varchar(256)
    ,artist_id 			varchar(256)
    ,year				varchar(256)
    ,duration			float
)

CREATE TABLE IF NOT EXISTS artist (
     artist_id 		 varchar(256)	 PRIMARY KEY
    ,name 			 varchar(256)
    ,location 		 varchar(256)
    ,latitude		 varchar(256)
    ,longitude		 varchar(256)
)


CREATE TABLE IF NOT EXISTS users (
     user_id		 varchar(256)	 PRIMARY KEY
    ,first_name		 varchar(256)
    ,last_name		 varchar(256)
    ,gender			 varchar(256)
    ,level 			 varchar(256)
)


CREATE TABLE IF NOT EXISTS time (
     start_time		 timestamp PRIMARY KEY
    ,hour			 varchar(256)
    ,day			 varchar(256)
    ,week			 varchar(256)
    ,month			 varchar(256)
    ,year			 varchar(256)
    ,weekday		 varchar(256)
)

CREATE TABLE IF NOT EXISTS songplay (
     songplay_id	 bigint IDENTITY(0,1) PRIMARY KEY
    ,start_time		 varchar(256)
    ,user_id 		 varchar(256)
    ,level			 varchar(256)
    ,song_id		 varchar(256)
    ,artist_id		 varchar(256)
    ,session_id		 varchar(256)
    ,location		 varchar(256)
    ,user_agent		 varchar(256)
)



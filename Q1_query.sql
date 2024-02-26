CREATE TABLE "Music_Video" (
	"musicVideoId"	INTEGER NOT NULL,
	"trackId"	INTEGER,
	"videoDirector"	TEXT,
	FOREIGN KEY("trackId") REFERENCES "tracks"("TrackId"),
	PRIMARY KEY("musicVideoId" AUTOINCREMENT)
);
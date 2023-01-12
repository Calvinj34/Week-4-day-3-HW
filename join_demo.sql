SELECT *
FROM favorite_song;

SELECT *
FROM artist;

-- LEFT TABLE (FROM CLAUSE)
-- RIGHT TABLE (JOIN CLAUSE)


-- inner join
SELECT *
FROM artist
INNER JOIN favorite_song
ON favorite_song.artist_id = artist.artist_id;

SELECT *
FROM favorite_song
INNER JOIN artist
ON favorite_song.artist_id = artist.artist_id;

SELECT song_name, album, artist_name
FROM artist
INNER JOIN favorite_song
ON favorite_song.artist_id = artist.artist_id;

-- LEFT JOIN
SELECT song_name, album, artist_name
FROM artist
LEFT JOIN favorite_song
ON favorite_song.artist_id = artist.artist_id;

-- RIGHT JOIN
SELECT song_name, album, artist_name
FROM artist
RIGHT JOIN favorite_song
ON favorite_song.artist_id = artist.artist_id;

SELECT song_name, album, artist_name
FROM favorite_song
RIGHT JOIN artist
ON favorite_song.artist_id = artist.artist_id;

-- FULL JOIN
SELECT song_name, album, artist_name
FROM artist
FULL JOIN favorite_song
ON favorite_song.artist_id = artist.artist_id;


-- Be specific with which column header you want from which table
SELECT song_name, favorite_song.album, artist_name, artist.artist_id
FROM artist
FULL JOIN favorite_song
ON favorite_song.artist_id = artist.artist_id;

-- You can rename/alias your tables 
SELECT song_name, f_s.album, artist_name, a.artist_id
FROM artist AS a
FULL JOIN favorite_song AS f_s
ON f_s.artist_id = a.artist_id;

-- The basic commands you learned on day 1 are still applicable
SELECT song_name, album, artist_name
FROM artist AS a
INNER JOIN favorite_song as f_s
ON a.artist_id = f_s.artist_id
WHERE song_name LIKE 'H%'
ORDER BY artist_name DESC;
-- Get all invoices where the unit_price on the invoice_line is greater than $0.99.
SELECT * 
FROM invoice_line
WHERE unit_price in(
  SELECT unit_price
  from invoice_line
  where unit_price > .99
  );

  -- Get all playlist tracks where the playlist name is Music.
SELECT *
from playlist_track
where playlist_id IN(
  select playlist_id
  from playlist
  where name = 'Music'
);

-- Get all track names for playlist_id 5.
select name
from track 
where track_id in(
  SELECT track_id
  from playlist_track
  where playlist_id = 5
  );

  -- Get all tracks where the genre is Comedy.
select *
from track
where genre_id in(
	select genre_id
  from genre
  where name = 'Comedy'
);

-- Get all tracks where the album is Fireball.
SELECT *
from track
where album_id in(
	select album_id
  from album
  where title = 'Fireball'
);

-- Get all tracks for the artist Queen ( 2 nested subqueries ).
SELECT * 
from track
where album_id in(
	select album_id
  from album
  where artist_id in(
  	select artist_id
    from artist
    where name = 'Queen'
  )
);
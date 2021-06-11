-- select the park name, campground name, open_from_mm, open_to_mm & daily_fee ordered by park name and then campground name
SELECT park.name, campground.name, open_from_mm, open_to_mm, daily_fee
FROM campground
INNER JOIN park ON campground.campground_id = park.park_id
ORDER BY park.name, campground.name

-- select the park name and the total number of campgrounds for each park ordered by park name
SELECT park.name, COUNT(campground.park_id)
FROM park
INNER JOIN campground ON park.park_id = campground.campground_id
GROUP BY park.name
ORDER BY park.name;



-- select the park name, campground name, site number, max occupancy, accessible, max rv length, utilities where the campground name is 'Blackwoods'
SELECT park.name, campground.name, site_id, max_occupancy, accessible, max_rv_length, utilities
FROM site
INNER JOIN campground On site.site_id = campground.campground_id
INNER JOIN park ON campground.campground_id = park.park_id
WHERE campground.name = 'Blackwoods'

/*
  select park name, campground, total number of sites (column alias 'number_of_sites') ordered by park
  -------------------------------------------------
    Acadia	Blackwoods	276
    Acadia	Seawall	198
    Acadia	Schoodic Woods	92
    Arches	"Devil's Garden"	49
    Arches	Canyon Wren Group Site	1
    Arches	Juniper Group Site	1
    Cuyahoga Valley	The Unnamed Primitive Campsites	5
  -------------------------------------------------
*/


-- select site number, reservation name, reservation from and to date ordered by reservation from date



/*
  select campground name, total number of reservations for each campground ordered by total reservations desc
  -------------------------------------------------
    Seawall	13
    Blackwoods	9
    "Devil's Garden"	7
    Schoodic Woods	7
    The Unnamed Primitive Campsites	5
    Canyon Wren Group Site	4
    Juniper Group Site	4
  -------------------------------------------------
*/





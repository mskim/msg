# TODO
2015 6 15
1. put link to images
1. add pagination
1. deploy
	http://202.136.115.1:3001

1. add search popup 
1. reduce picture size

1. navigation
	- home
		this month hot menu
		recommended
	- restaurant list
1. eager loading

# MSG
 Ma Shee GGung

## Table

### Place
	t.string   "name"
    t.string   "station"
    t.string   "school"
    t.string   "library"
    t.string   "city"

### Menu
	t.string   "name"
	t.integer  "place_id"

### Picture
	t.integer  "menu_id"
	t.string   "filename"

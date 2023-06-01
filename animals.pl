animals(cheetahs).
animals(lions).
animals(snakes).
animals(crocodiles).
animals(sharks).
animals(dolphins).
animals(horses).
animals(donkeys).

warm_blooded(horses).
warm_blooded(donkeys).
warm_blooded(dolphins).
warm_blooded(lions).
warm_blooded(cheetahs).
cold_blooded(snakes).
cold_blooded(crocodiles).
cold_blooded(sharks).

have(horses, hair).
have(donkeys, hair).
have(dolphins, hair ).
have(lions, fur).
have(cheetahs, fur).
have(snakes, scales).
have(crocodiles, scales).

produce_milk(horses).
produce_milk(donkeys).
produce_milk(dolphins).
produce_milk(lions).
produce_milk(cheetahs).
lay_eggs(snakes).
lay_eggs(crocodiles).
have_gills(sharks).


are(lions,carnivores).
are(cheetahs,carnivores).
are(crocodiles,carnivores).
are(snakes,carnivores).
are(sharks,carnivores).

color_of(bright_yellow,lions).
color_of(reddish_yellow,lions).
color_of(dark_brown,lions).
color_of(tawny_color,cheetahs).
color_of(gray,sharks).
color_of(brown,sharks).
color_of(yellow,sharks).
color_of(slate,sharks).
color_of(blue,sharks).
color_of(olive_green,crocodiles).
color_of(brown,crocodiles).
color_of(green,snakes).
color_of(bright_yellow,snakes).
color_of(red,snakes).
color_of(grey, donkeys).
color_of(brown, donkeys).
color_of(black, donkeys).
color_of(roan, donkeys).
color_of(white , donkeys).
color_of(bay, horses).
color_of(brown, horses).
color_of(black, horses).
color_of(chestnut, horses).
color_of(white , horses).
color_of(gray,dolphins).
color_of(black,dolphins).
color_of(pink,dolphins).

eat(rabbit,carrot).
eat( fox,rabbit ).
eat( lions,fox).
is_digesting(X,Y):- eat(X,Y).
is_digesting(X,Y):-eat( X,Z), is_digesting(Z,Y).


mammals(X):- warm_blooded(X), (have(X, hair); have(X, fur)), produce_milk(X).

reptiles(X):- cold_blooded(X), lay_eggs(X), have(X, scales).

fish(X):- cold_blooded(X), have_gills(X).


colors_of_horses(X):-color_of(X, horses).
colors_of_donkeys(X):-color_of(X, donkeys).
colors_of_lions(X):- color_of(X,lions ).
colors_of_sharks(X):-color_of(X,sharks).
colors_of_crocodiles(X):- color_of(X,crocodiles).
colors_of_snakes(X):- color_of(X,snakes).
colors_of_dolphins(X):- color_of(X,dolphins).


iscarnivore(X):- are(X,_),(mammals(X);reptiles(X)).


animals_list(X,[X|_]).
animals_list(X,[_|Y]):- animals_list(X,Y).

mammals_list(H,[H|_]).
mammals_list(H,[_|T]):- mammals_list(H,T).
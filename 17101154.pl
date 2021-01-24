dress(dress1,details(salwar_kamij,three_piece,price_3000)).
dress(dress2,details(kurti,one_piece,price_1200)).
dress(dress3,details(tops,one_piece,price_800)).
dress(dress4,details(salwar_suit,two_piece,price_1500)).
dress(dress5,details(burkha,two_piece,price_2000)).

sharee(sharee1,details(dhakai_jamdani,without_blouse_piece,price_3000)).
sharee(sharee2,details(deshi_tat,with_blouse_piece,price_1550)).
sharee(sharee3,details(party,with_blouse_piece,price_5000)).
sharee(sharee4,details(pure_silk,with_blouse_piece,price_2000)).
sharee(sharee5,details(heavy_katan,with_blouse_piece,price_5500)).

made_in(dhaka,cotton).
made_in(kashmir,silk).
made_in(europe,georgette).
made_in(rajshahi,half_silk).
made_in(dhakai_handloom,jamdani).
made_in(india,katan).
made_in(tangail,tat).


item_specification(silk,dress1).
item_specification(cotton,dress2).
item_specification(half_silk,dress3).
item_specification(tat,dress4).
item_specification(georgette,dress5).
item_specification(jamdani,sharee1).
item_specification(tat,sharee2).
item_specification(georgette,sharee3).
item_specification(silk,sharee4).
item_specification(katan,sharee5).

collect(ground_floor_dress_section,dress1).
collect(ground_floor_dress_section,dress2).
collect(ground_floor_dress_section,dress3).
collect(ground_floor_dress_section,dress4).
collect(ground_floor_dress_section,dress5).
collect(first_floor_sharee_section,sharee1).
collect(first_floor_sharee_section,sharee2).
collect(first_floor_sharee_section,sharee3).
collect(first_floor_sharee_section,sharee4).
collect(first_floor_sharee_section,sharee5).


available(Materials,Item_code):-
    item_specification(Materials,Item_code),
format('~w is available in ~w',[Materials,Item_code]).

details_of_an_item(Item_code,Details):-
    dress(Item_code,Details);
    sharee(Item_code,Details),
format('~w details are ~w',[Item_code,Details]).

get_item(Counter,Item_code):-
    collect(Counter,Item_code),
    format('~w get this item from ~w',[Item_code,Counter]).
price([]).
price([Item_code]):-
    dress(Item_code,details(_,_,Price)),
    format('~w price is ~w', [Item_code,Price]).


items([]).
items([Item_code|T]):-
    item_specification(X,Item_code),made_in(Place,X),format('~w material is ~w made in ~w ~n', [Item_code,X,Place]);
    items(T).




























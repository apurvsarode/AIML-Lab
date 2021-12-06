city(C) :-
      length(C, 5),
      member(h('Last Stand', _, _), C),
      member(h('Mile City', _, _), C),
      member(h('New Town', _, _), C),
      member(h('Olliopolis', _, _), C),
      member(h('Polberg', _, _), C),
      member(h(_, mountains, _), C),
      member(h(_, forest, _), C),
      member(h(_, coast, _), C),
      member(h(_, desert, _), C),
      member(h(_, valley, _), C),
      member(h(_, _, 12), C),
      member(h(_, _, 27), C),
      member(h(_, _, 32), C),
      member(h(_, _, 44), C),
      member(h(_, _, 65), C),
      member(h(_, desert, 12), C),
      member(h(_, forest, 65), C),
      member(h('New Town', mountains, _), C),
      member(h('Last Stand', _, A), C),
      member(h('Olliopolis', _, B), C),
      A > B,
      member(h('Mile City', _, D), C),
      member(h('Polberg', _, E), C),
      D > E,
      member(h('New Town', _, F), C),
      F > D,
      member(h('Olliopolis', _, 44), C),
      member(h(_, mountains, 32), C),
      member(h(_, coast, 27), C).

rain_amount(City_Name, Rainfall_Amount) :-
    city(C),
    member(h(City_Name, _, Rainfall_Amount), C),
    write(City_Name), write(" received "),write(Rainfall_Amount), write(" inches of rain."),nl.
    
city_region(City_Name, Region) :-
    city(C),
    member(h(City_Name, Region, _), C),
    write(City_Name), write(" is located in the "),write(Region), nl.

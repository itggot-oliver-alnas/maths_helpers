# maths_helpers
## Uppgiftsbeskrivning ##

Ni ska skriva några olika matematiska funktioner: `halve`, `add`, `subtract`, `multiply`, `square` och `square_of_square_root`

* `halve` tar ett tal (`value:`) **som argument**, och **returnerar** det halverade talet
* `add` tar två termer (`term1:` & `term2:`)  **som argument**, adderar de två talen, och **returnerar** summan
* `subtract` tar två termer (`term1:` & `term2:`) **som argument**, och **returnerar** differensen
* `multiply` tar två faktorer (`factor1:` & `factor2:`) **som argument** och **returnerar** produkten
* `square` tar ett tal (`value:`) **som argument**, och **returnerar** kvadraten av talet

Bonusbana:

* `square_of_square_root` tar ett tal (`value:`) **som argument** och **returnerar** kvadraten av kvadratroten av talet. Funktionen måste använda (anropa) square-funktionen ni skapade tidigare





Alla funktionerna ska ligga i samma fil (`lib/maths_helpers.rb`)

### Flödesschema ###

Skapa ett flödesschema för varje funktion
Testa flödesschemat med penna och papper

### Exempel ###
```ruby
	< halve(value: 4) #=> 2
	< halve(value: 9) #=> 4.5

	< add(term1: 3, term2: :2) #=> 5
	< add(term1: 3, term2: -6) #=> -3

	< subtract(term1: 9, term2: 3) #=> 6
	< subtract(term1: 3, term2: 5) #=> -2

	< multiply(factor1: 3, factor2: 5) #=> 15
	< multiply(factor1: 3, factor2: -2) #=> -6

	< square(value: 4) #=> 16
	< square(value: 16) #=> 256

	< square_of_square_root(value: 4) #=> 4
	< square_of_square_root(value: 256) #=> 256
```

### Test ###

Kör `bundle install` i projektets rotmapp för att installera alla bibliotek.

Testerna finns i `test/test_funktionens_namn`.

Kör testerna (från uppgiftens rotmapp): `ruby test/test_funktionens_namn.rb` 

Exempelvis `ruby test/test_multiply.rb`

För att köra alla testerna: `rake test`

### Bonusbana ###

Vad händer om funktionerna får en `String` som input istället för en `Integer`?

Uppdatera funktionerna så de hanterar felaktig input. 

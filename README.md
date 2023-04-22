# Geocache programmeren is makkelijker dan je denk
Deze repository bevat powershell scripts die te gebruiken zijn voor het oplossen van Geocache trail (mystery) programmeren is makkelijker dan je denkt.

## Cache omschrijving - GC6DNDV
### Credits voor deze cache aan met218


Deze cache is de start van een serie caches bedoeld voor mensen die houden van het oplossen van puzzels m.b.v. een computer. Het is de bedoeling dat de volgende wat moeilijker worden.
In de wereld om ons heen krijgen we meer en meer te maken met computers. Het kan dan ook geen kwaad voor de mensen die nu leven en opgroeien om meer te weten over de werking van computers en hoe je ze moet programmeren. De volgende opdrachten zijn allemaal problemen die je nog wel met pen en papier op kunt lossen, maar een luie nerd zal eerder een computer gebruiken om ze op te lossen. Bij alle opgaven geldt: als het antwoord groter is dan 9 dan moet je stapeltellen om op 1 cijfer uit te komen.

De cache ligt op N53° 1A.BCD E6° 3F.GHI

Vector racing
A = Vroeger op school (toen we nog geen computer hadden) speelden we een racespel op ruitjespapier. De spelregels waren als volgt: je racewagen start op coordinaat (0,0) en iedere beurt kan je kiezen uit 5 commando's:

'.' = niks doen. De auto beweegt met dezelfde verplaatsing als bij de vorige beurt
'>' = 1 naar rechts. De auto eindigt 1 hokje rechts van het punt waar hij terecht zou komen als je de verplaatsing van de vorige beurt zou herhalen
'^' = 1 omhoog. De auto eindigt 1 hokje boven het punt waar hij terecht zou komen als je de verplaatsing van de vorige beurt zou herhalen
'v' = 1 omlaag. De auto eindigt 1 hokje onder het punt waar hij terecht zou komen als je de verplaatsing van de vorige beurt zou herhalen
'<' = 1 naar links. De auto eindigt 1 hokje links van het punt waar hij terecht zou komen als je de verplaatsing van de vorige beurt zou herhalen
Stel je start op coördinaat (0,0) en kiest voor '>', dan gaat je racewagen naar coördinaat (1,0). De bewegingsvector van je wagen is nu (1,0). Stel je besluit hierna niks te doen (dat is '.') dan gaat je wagen nog steeds met bewegingsvector (1,0) naar coördinaat (2,0). Stel je besluit hierna '^' te doen dan wordt de bewegingsvector (1,1) en ga je naar coördinaat (3,1). Kijk hier voor meer uitleg.

Na welke rij operaties eindigt jouw racewagen startend in coördinaat (0,0) precies in coördinaat (20,20)?

0: >^^v<.^v^v>><v<>^>><v
1: <.>>^v>^^.<v>.<^.v^v
2: <>v^<>.v^>^^.v>>^^^.
3: ^.^><v^<v.v^>>>..>.v.v<
4: >.^<.><vv^^.>>.><><<<^^
5: ^^>v^v.v^<>^v><<>^vv.v<
6: ...<><^<v>>^^^>v>>.v>v..
7: >^^>.><v^v<v<^^vv<>v
8: >.>.<.^^....<>v.v^<.
9: >^>^.^><v^v<v<vv><.<<
Woordwaarde
B = Bij deze opgave moet de waarde van een woord worden berekend. Alleen gebruiken we nu niet de normale manier van woordwaarde berekenen. We hebben te maken met de volgende regels:

Als een letter 1 keer voorkomt (kleine letter of hoofdletter) is de waarde van deze letter zijn positie in het alfabet (a=1, etc), echter als het gaat om een hoofdletter is het de negatieve waarde (A=-1, etc)
Als een letter vaker dan 1 keer voorkomt wordt de waarde van deze letters samen als volgt bepaald:
als de kleine letter variant het vaakste voorkomt is de waarde van al deze letters samen het totaal aantal voorkomens van de letter (hoofdletterongevoelig)
als de hoofdletter variant het vaakste voorkomt is de waarde van al deze letters samen -1 * het aantal voorkomens van de letter (hoofdletterongevoelig)
als de kleine letter variant even vaak voorkomt als de hoofdletter variant is hun totale waarde 0.
Het gaat om het woord: aaNsprakElijkheIdsWaArdEvaStsteLliNgsvErandErinGen

Bijzonder getal
C = Stel je gaat alle natuurlijke getallen in oplopende volgorde af, beginnend bij 1. Wat is dan het eerste getal dat je tegen komt, waarbij als je er willekeurig 1 cijfer van mag wijzigen, het toch niet lukt om er een ander getal van te maken dat priem is? Verdubbel dit getal voor je gaat stapeltellen.

LCD Display
D = Zakjapanners tonen op hun display getallen waarbij voor ieder cijfer maximaal 7 streepjes worden gebruikt. Als je de natuurlijke (=gehele) getallen afgaat beginnend met 1 en dan steeds hoger, wat is dan het eerste getal dat je tegenkomt dat uit minimaal 15 streepjes bestaat maar ook een priemgetal is? Voor de duidelijkheid: de 7 bestaat uit 3 streepjes.

24 spel
F = Bij het 24 spel moet je met 4 getallen gekozen uit {1,2,3,4,5,6,7,8,9} en 3 operators gekozen uit {+,-,*,/} 24 vormen. Je mag getallen niet samenvoegen en je moet elk getal gebruiken. Dezelfde getallen en operatoren mogen vaker dan 1 keer voorkomen. Je mag haakjes en breuken gebruiken. Bijv. 2 2 2 4 is een oplossing, want

(2 + 2 + 2) * 4 = 24

Met welke combinatie kan je als enige 24 vormen?

0: 9 5 9 2
1: 5 9 7 9
2: 6 9 6 9
3: 4 9 4 9
4: 3 7 3 7
5: 2 9 7 2
6: 1 9 2 9
7: 1 6 7 8
8: 3 7 5 7
9: 4 9 7 7
Aftelversje
G = Stel bij gymnastiek wordt de leider voor een spel bepaald door een variant van 'iene miene mutte' waarbij steeds de persoon afvalt waar je liedje eindigt en je vervolgens verder gaat met elimineren met dezelfde methode door opnieuw te beginnen bij de persoon die na de afgevallen persoon kwam tot er nog maar 1 persoon over is. De personen staan in een kring en er is iemand aangewezen als startpersoon (persoon 0). Op de plaats van de persoon met welk nummer moet je gaan staan om te winnen als je weet dat de kring uit 41 personen (dit is inclusief jezelf) bestaat en het aftelliedje 50 lettergrepen heeft?

Schuifpuzzel
H = De schuifpuzzel van 8 is een bekende puzzel met 8 hokjes en 1 leeg hokje in een 3 bij 3 grid. De bedoeling van het spel is om steeds een puzzelstukje die grenst aan het lege hokje naar het lege hokje te schuiven totdat de eindcombinatie

1	2	3
4	5	6
7	8	
bereikt is. Welke van de volgende puzzels is als enige oplosbaar?
0:
1	8	5
3		4
6	7	2
1:
2	1	3
4	5	6
7	8	
2:
4	3
7	5	8
6	2	1
3:
2	4	8
7	5	1
6		3
4:
3	2	1
6	5	4
8	7
5:
1	4	7
2	5	8
3	6	
6:
6	3
8	5	2
7	4	1
7:
1	2	3
8		4
7	6	5
8:
1	2	3
5		4
6	7	8
9:
4	8
7	5	3
6	2	1
Wachtwoorden
I = Op je werk vragen ze je om iedere dag je wachtwoord te veranderen omdat dat veiliger zou zijn. Je bedenkt dat steeds een willekeurig wachtwoord verzinnen en onthouden niet te doen is. Daarom bedenk je een formule waar je wachtwoord aan moet voldoen zodat je hem beter kan onthouden. Je bedenkt de volgende regels:

Hij moet 5 letters lang zijn en alleen kleine letters bevatten
Hij moet minimaal 1 klinker en 1 medeklinker bevatten (de y beschouwen we als medeklinker)
Er moeten 2 maal 2 elkaar direct herhalende dezelfde letters in voorkomen (deze paren mogen niet gelijk aan elkaar zijn)
De letters in je wachtwoord moeten alfabetisch aflopend zijn (iedere letter moet gelijk of lager zijn dan de voorgaande letter)
Beginnend bij 'aaaaa' is het eerste geschikte wachtwoord dus 'bbaaa'. Vanaf dan kies je steeds het eerstvolgende wachtwoord dat aan je regels voldoet dat hier alfabetisch op volgt. Op een dag kom je erachter dat je al 21 dagen achtereen een wachtwoord hebt gekozen dat alfabetisch direct volgt op het vorige wachtwoord (met andere woorden: er is geen woord van 5 tekens te bedenken dat alfabetisch tussen je huidige en vorige wachtwoord zou passen). En het is al de 4e keer dat dit fenomeen optreedt. Wat is de woordwaarde van je huidige wachtwoord?

p.s. Geef bij je found post even aan of je je computer hebt gebruikt of niet.
p.p.s. Als je een elegante oplossing hebt voor 1 van de vragen zou ik hem graag zien (via een private message)

Het eremetaal:
1.	enno.laan
2.	mmgro
3.	DeStrandzoekers

Klik om de lijst met oplossers te zien
U kan uw oplossing valideren met certitude.

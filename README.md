# robotframework demo
Ismerkedés a robotframework-vel.



1 - hozzatok létre ebben a projektben egy SANDBOX nevű mappát ahova mindenkinek kreáljatok egy SANDBOX_(monogram) nevű test suite-ot.(pl.: SANDBOX_MG)

2 - hozz létre egy global listát amiben a 12 hónap neve van

3 - logoljuk ki az összes lista elemet a képernyőre (log list)

4 - logoljuk ki az első 6 elemet a képernyőre

5 - szedjük ki a 11-edik elemet a listából (november) ; ezt tegyük bele egy változóba ; a kapott stringet vágjuk meg úgy hogy csak a nov maradjon belőle és ezt logoljuk ki a képernyőre

6 - hozz létre egy szorzok nevű keyword-öt ami 2 paramétert vár (mit, mivel) -> eredményként pedig adja vissza a szorzatot ->egy tc-ben hívjuk meg ezt a szorzok keyword-öt, adjuk meg a szorzó paramétereket és az eredményét logoljuk ki

7 -  hozz létre egy összeadok keyword-öt úgy hogy az első számot kötelező paraméterként bekérje, a második szám az opcionális paraméter legyen és ennek a default értéke 5 - > hívjuk meg ezt egy tc-ből , adjuk meg neki a számot és logoljuk ki az eredményt

8 - hozz létre keyword-öt  listakeres néven -> az első paramétere egy string ami a keresett lista elem, a második pedig egy lista---> ezt meghívjuk egy tc-ből, megadjuk neki a hónapok listát és azt hogy pl.: november------ha benne van a listában akkor írja ki a keyword hogy igaz, ha nincs akkor pedig azt hogy hamis....bármilyen listára, bármilyen keresett szövegre működni kell

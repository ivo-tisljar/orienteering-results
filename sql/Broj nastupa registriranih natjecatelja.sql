SELECT
	trka.datum,
	trka.naziv,
	Count(*) AS 'broj svih rezultata',
	(
		SELECT
			Count(*)
		FROM
			trka AS t
				INNER JOIN
			staza AS s ON s.trka_id = t.id
				INNER JOIN
			staza_kategorija AS sk ON sk.staza_id = s.id
				INNER JOIN
			rezultat AS r ON r.stazakategorija_id = sk.id
		WHERE
			t.id = trka.id
				And
			r.registracija = 1
	) AS 'broj registriranih'
FROM
	trka
		INNER JOIN
	staza ON staza.trka_id = trka.id
		INNER JOIN
	staza_kategorija ON staza_kategorija.staza_id = staza.id
		INNER JOIN
	rezultat ON rezultat.stazakategorija_id = staza_kategorija.id
WHERE
	year(trka.datum) = 2021
GROUP BY
	trka.datum,
	trka.naziv
ORDER BY 	
	trka.datum
SELECT name, EXTRACT(DAY FROM payday)::int
FROM loan;

~ South Korea Peninsula Risk & Corporate Crisis Advisory
~ Analysis queries run against dprk_incidents.db
~ Reproduces the base-rate figures used in the advisory memo

~ 1. Sanity Check
SELECT COUNT(*) FROM dprk_provocation_incidents;

~ 2. Confirm the actual date range covered by the dataset
SELECT MIN(date), MAX(date) FROM dprk_provocation_incidents;

~ 3. Incident breakdown by category
SELECT type_category, COUNT(*) FROM dprk_provocation_incidents GROUP BY type_category ORDER BY 2 DESC;

~ 4. Proximity band distribution from Hwaseong campus
SELECT CASE
    WHEN distance_from_hwaseong_km <= 250 THEN 'near (<=250km)'
    WHEN distance_from_hwaseong_km <= 350 THEN 'mid (250-350km)'
    ELSE 'far (>350km)' END AS proximity_band, COUNT(*)
FROM dprk_provocation_incidents GROUP BY 1 ORDER BY 2 DESC;

~ 5. Monthly incident rate across the full window (44 months, Oct 2022 to Jun 2026)
SELECT COUNT(*), ROUND(COUNT(*) / 44.0, 2) AS per_month FROM dprk_provocation_incidents;

~ 6. Sourcing Check
SELECT id, date, source_1, source_2 FROM dprk_provocation_incidents WHERE source_2 IS NULL OR source_2 = '';

~7. Full incident record, sorted chronologically
SELECT id, date, type_category, incident_type, distance_from_hwaseong_km, source_1, source_2
FROM dprk_provocation_incidents ORDER BY date;

# South Korea Peninsula Risk & Corporate Crisis Advisory
A geopolitical risk assessment examining DPRK provocation activity relative to ASML's Hwaseong campus in South Korea.

## Central Finding
Across 15 significant, independently verified DPRK provocation incidents recorded between October 2022 and June 2026, none involved a strike, incursion, or direct targeting of South Korean territory, and Hwaseong campus itself shows low physical exposure under every recorded incident. The material risk instead runs through a different channel: supply chain and customer disruption. Hwaseong's Repair and Reuse Center services Samsung and SK hynix lithography systems directly, and South Korea represents 25.5 percent of ASML's 2025 net sales, meaning regional escalation is more likely to reach ASML through customer operations than through the facility itself.

## Scope
* Entity: ASML Holding N.V. (ASML, Euronext Amsterdam)
* Geographic Focus: South Korea, Hwaseong campus (Gyeonggi-do)
* Time Window: October 2022 to June 2026
* Methodology: Open-Source Intelligence (OSINT) and Structured Analytic Techniques

## Files
- `/data` — Incident dataset CSV, reference cities CSV, SQLite database, ASML annual report (source material)
- `/output` — Final exported map and advisory memo
- `/qgis` — QGIS project file and '/layers' subfolder (boundaries, buffers, facility, landcover, reference)
- `/research` — Source verification notes 
- `/sql` — Analysis queries used to produce base-rate and proximity figures

## Methodology and Sources
Research was structured across four domains, each drawing on a distinct source base:
- Incident Verification: CSIS Beyond Parallel's provocation database as primary source, cross-checked against Reuters as an independent second source for every incident; a sourcing circularity issue involving Yonhap-derived citations was identified and corrected during verification.
- Facility Profile: ASML SEC 20-F filings (SEC EDGAR), ASML investor relations materials, and independent business press coverage confirming Hwaseong campus scale, function, and operational status.
- Spatial Analysis: GADM administrative boundaries, OpenStreetMap land use data, and Google Earth Pro for coordinate verification, mapped and analyzed in QGIS 3.44.7, including proximity buffer analysis and a spatial join calculating exact distance from Hwaseong campus for every incident.
- Risk Assessment: Structured analytic techniques, including base-rate analysis, Key Assumptions Check, and Scenario Generation, applied to produce forward risk scenarios and a two-tier crisis response protocol.

## Disclaimer
This project was produced exclusively for portfolio purposes to demonstrate open-source corporate and geopolitical risk analysis methodology. All information is drawn strictly from publicly available sources. No proprietary, confidential, or non-public information was used or sought. This project does not constitute legal, financial, or investment advice.

## Built
- July-August 2026

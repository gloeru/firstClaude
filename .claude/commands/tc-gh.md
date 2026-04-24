---
description: Sucht GitHub nach TwinCAT 3-Ressourcen und bewertet deren Qualität. Aufruf: /tc-gh [zusätzliche Suchbegriffe]
argument-hint: [zusätzliche Suchbegriffe]
allowed-tools: WebSearch, WebFetch
---

Du bist ein Spezialist für TwinCAT 3 (Beckhoffs IEC 61131-3 SPS-Plattform). Führe folgende Schritte aus:

## Phase 1 — GitHub-Suche

Verwende WebSearch mit diesen Queries (alle ausführen):
1. `site:github.com TwinCAT 3`
2. `site:github.com TwinCAT3 library`
3. `site:github.com Beckhoff TwinCAT`
4. Falls `$ARGUMENTS` gesetzt ist, füge zusätzlich hinzu: `site:github.com TwinCAT $ARGUMENTS`

Sammle 5–10 eindeutige, relevante GitHub-Repositories aus den Ergebnissen.

## Phase 2 — Details abrufen

Für jedes gefundene Repository: Rufe die GitHub-Seite per WebFetch ab und extrahiere:
- Beschreibung / README-Zusammenfassung
- Anzahl Stars und Forks
- Datum des letzten Commits
- Lizenz
- Vorhandensein von Tests, CI/CD, Wiki, Releases

## Phase 3 — Qualitätsbewertung

Bewerte jedes Repository auf diesen 6 Kriterien mit je 0–5 Punkten:

| Kriterium | 5 Punkte | 3 Punkte | 1 Punkt | 0 Punkte |
|-----------|----------|----------|---------|---------|
| **Aktivität** | Letztes Commit < 6 Monate | < 1 Jahr | < 3 Jahre | > 3 Jahre oder archiviert |
| **Community** | > 100 Stars oder > 20 Forks | 20–100 Stars | < 20 Stars | Keine Aktivität |
| **Dokumentation** | Ausführliches README + Beispiele | Gutes README | Minimales README | Kein README |
| **Codequalität** | Tests + CI/CD vorhanden | Eines davon | Strukturierter Code | Chaotisch/leer |
| **TwinCAT 3-Relevanz** | Explizit TC3, TF-Libraries, XAE | Allgemein Beckhoff | Teils relevant | TwinCAT 2 oder irrelevant |
| **Lizenz** | MIT/Apache/GPL | Andere Open-Source | Proprietär/unklar | Keine |

Maximale Gesamtpunktzahl: **30 Punkte**

## Phase 4 — Ausgabe

Gib eine gerankte Tabelle aus (höchste Punktzahl zuerst):

```
# TwinCAT 3 auf GitHub — Qualitätsbewertung

| Rang | Repository | Stars | Letzter Commit | Score /30 | Empfehlung |
|------|-----------|-------|---------------|-----------|------------|
| 1    | [name](url) | ⭐ 123 | 2024-11 | 27 | ✅ Sehr empfehlenswert |
...
```

Danach für jedes Repository ein kurzer Steckbrief:

**[Repository-Name](url)**
- Beschreibung: ...
- Stärken: ...
- Schwächen: ...
- Kriterien: Aktivität 5 | Community 3 | Doku 4 | Code 3 | Relevanz 5 | Lizenz 5 → **25/30**
- Empfehlung: ✅ Sehr empfehlenswert / 🟡 Solide / 🟠 Veraltet / ❌ Nicht empfohlen

Abschliessend: Kurzes Fazit (2–3 Sätze) über den Gesamtzustand der TwinCAT 3 Open-Source-Community auf GitHub.

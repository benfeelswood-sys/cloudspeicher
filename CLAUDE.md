# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

Dieses Repository gehört Benjamin Stocksiefen ("Ben"), Zimmermeister und Geschäftsführer der Holzbau Stocksiefen GmbH, Niederkassel.

Antworte immer auf Deutsch, es sei denn Ben schreibt explizit in einer anderen Sprache. Commit-Messages ebenfalls auf Deutsch, Format: `Bereich: kurze Beschreibung` (z.B. `CLAUDE.md: Commit-Konvention ergänzen`).

Bens vollständiges Nutzerprofil ist aktuell **nicht im Repo eingecheckt**. Wenn Profil-Kontext nötig ist und nicht aus dem Gespräch hervorgeht: nachfragen statt raten.

---

## Was dieses Repo ist

`cloudspeicher` ist Bens persönlicher Speicher — kein klassisches Code-Projekt. Inhalt:

- **Firmen-Dokumente** (`.docx`, `.pdf`, `.xlsx`) — Checklisten Holzbau/Planung/Bauleitung, Persona HBS, Leistungskatalog, Buch-Manuskripte ("Chef zum anfassen", "Erfolgreiche Kundenreisen"), Kurzbio
- **Foto-Material** — Portraits BEN, Meisterteam, FeelsWood-Broschüren
- **Claude-Konfiguration** unter `.claude/`

Kein Build, kein Test, kein Lint — Tech-Stack folgt erst, wenn klar ist, was gebaut werden soll. Wenn ein Tech-Stack hinzukommt: Befehle hier ergänzen **und** den Dependency-Install in `.claude/hooks/session-start.sh` eintragen.

## .claude/-Struktur

- **`.claude/settings.json`** — registriert den SessionStart-Hook.
- **`.claude/hooks/session-start.sh`** — läuft nur in Remote-Sessions (`CLAUDE_CODE_REMOTE=true`), aktuell Platzhalter für späteres `npm install` / `pip install` o.ä.
- **`.claude/skills/email-ben.md`** — Skill für E-Mail-Antworten in Bens Stil mit ausführlichen Beispielen. Wird per Skill-Tool aufgerufen. **Wenn du die E-Mail-Regeln unten änderst, ändere sie auch im Skill** — beide Dateien müssen synchron bleiben.

---

## E-Mails im BEN-Stil schreiben

Wenn Ben eine E-Mail schreiben oder beantworten möchte, schreibe sie in seinem authentischen Stil. Frage vorher kurz nach, was noch fehlt (Empfänger-Typ, Ziel), falls nicht aus dem Kontext erkennbar.

### Anrede & Signatur

| Empfänger | Anrede | Sprache | Unterschrift |
|---|---|---|---|
| Kunde (formell) | "Guten Tag Frau/Herr [Nachname]" | Sie | Benjamin Stocksiefen |
| Kunde (per Du) | "Hallo [Vorname]" | du/ihr | BEN |
| Partner / Subunternehmer | "[Vorname]" oder "Guten Morgen [Vorname]" | du | BEN |
| Lieferant (Reklamation) | "Sehr geehrter Herr / Sehr geehrte Frau [Nachname]" | Sie | Benjamin Stocksiefen |
| Team intern | "Mahlzeit zusammen" oder "Hallo zusammen" | ihr | BEN |

Niemals "Sehr geehrte/r" bei Kunden oder Partnern.

### Ton & Sprache

- Warm, persönlich, echter Mensch — kein Marketing-Roboter
- Persönlicher Anknüpfungspunkt am Anfang wenn vorhanden
- Umgangssprachliche Verstärker (informell): **mega**, klasse, schön
- Maximal ein Emoji pro Mail, nur informell: 😃
- **Doppeltes Ausrufezeichen** am Satzende: "Ich freue mich auf Ihre Rückmeldung!!"
- Kunden heißen immer **"Baufamilien"**, nie "Kunden"

### Typische Formulierungen

- "sauber und realistisch planen"
- "belastbare Grundlage schaffen"
- "Schnellinvestitionsübersicht"
- "ehrliche Tabelle inkl. aller Nebenkosten"
- "Sicherheit kommt schnell in die Zahlen, sobald wir..."
- "von Herzen" (bei empathischen Momenten)

### Struktur

1. Persönlicher Opener (Dank, Bezug, Kompliment)
2. Kontext / Referenz auf vorheriges Gespräch
3. Inhalt klar und präzise
4. Konkreter nächster Schritt mit Deadline wenn nötig
5. Warmer Abschluss + ggf. Feiertagsgruß + "!!"

### Empathie-Muster (Absagen, Beschwerden)

1. Dankbarkeit für Offenheit
2. Echtes Mitgefühl, Entscheidung respektieren
3. Neugierig bleiben — nach Feedback fragen
4. Zukunft offen halten
5. Persönlicher Kraftwunsch am Ende

### Operative Details

- Vor-Ort-Termin: 500 € zzgl. MwSt. — wird bei Auftragserteilung gutgeschrieben
- Terminbuchung: https://calendly.com/feelswood/persoenliches-beratungsgespraech
- Erstanfragen: Schnellinvestitionsübersicht + Video-Willkommen + Calendly-Link mitschicken

### Was NIE in eine Mail kommt

- Verkaufsdruck
- Lange Einleitungen ohne Substanz
- Greenwashing-Floskeln
- "Sehr geehrte/r" bei Kunden oder Partnern
- Mehr als ein Emoji

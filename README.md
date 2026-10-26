# 🎓 Time Guesser Website (Vorlesungs-Spätkomm-Wette)

Eine private Wettplattform für den Freundeskreis, um zu tippen, wie viele Minuten zu spät eine bestimmte Person zu Vorlesungen erscheint.

---

## 🚀 Tech Stack

* **Backend:** Python / Django
* **Datenbank:** PostgreSQL (via Docker)
* **Containerisierung:** Docker & Docker Compose
* **Styling:** Tailwind CSS

---

## ✨ Features

* **Token-basierte Registrierung:** Neue Nutzer können sich nur mit einem gültigen, vom Admin generierten Access-Token registrieren.
* **Tipp-System:** Übersicht aller kommenden Vorlesungen und Abgabe des geschätzten Verspätungs-Timings in Minuten.
* **Automatisches Scoring:** Der Admin trägt nach der Vorlesung das tatsächliche Ergebnis ein, und das System vergibt vollautomatisch Punkte basierend auf der Abweichung.
* **Leaderboard:** Eine Live-Bestenliste zeigt, wer die besten Prognose-Fähigkeiten hat.

---

## 🛠️ Lokale Installation & Start mit Docker

Stelle sicher, dass **Docker** und **Docker Compose** auf deinem Rechner installiert sind und sich `manage.py`, `Dockerfile` und `docker-compose.yml` im selben Hauptverzeichnis befinden.

1. **Container im Hintergrund starten und bauen:**
   ```bash
   docker compose up -d --build
   ```

2. **Datenbank-Tabellen migrieren:**
   ```bash
   docker compose exec web python manage.py migrate
   ```

3. **Admin-Account (Superuser) erstellen:**
   ```bash
   docker compose exec web python manage.py createsuperuser
   ```
   *(Gib hier deinen gewünschten Benutzernamen, E-Mail und Passwort ein).*

4. **Website aufrufen:**
   * **Admin-Panel & Verwaltung:** [http://127.0.0.1:8000/admin/](http://127.0.0.1:8000/admin/)
   * **Dashboard:** [http://127.0.0.1:8000/](http://127.0.0.1:8000/)

---

## 🛑 Projekt stoppen

Um die Docker-Container wieder anzuhalten, führe folgenden Befehl aus:

```bash
docker compose down
```
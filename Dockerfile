# Wähle ein minimales Python-Image
FROM python:3.9-slim

# Setze das Arbeitsverzeichnis im Container
WORKDIR /app

# Kopiere die index.html in das Arbeitsverzeichnis
COPY index.html /app/index.html

# Standardport für HTTP
EXPOSE 8000

# Starte den Python SimpleHTTPServer (Python 3)
CMD ["python3", "-m", "http.server", "8000"]
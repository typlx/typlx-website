FROM python:3.9-slim
WORKDIR /app
COPY index.html privacy.html 404.html robots.txt sitemap.xml ./
COPY css/ ./css/
COPY js/ ./js/
COPY assets/ ./assets/
COPY blog/ ./blog/
EXPOSE 5000
CMD ["python", "-m", "http.server", "5000"]

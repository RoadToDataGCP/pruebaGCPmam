# Usa una imagen de Python ligera
FROM python:3.11-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos de dependencias e instala
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto del código
COPY . .

# Expón el puerto que Cloud Run necesita
EXPOSE 8080

# Comando para arrancar la app
CMD ["python", "main.py"]
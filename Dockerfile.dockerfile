# filepath: c:\Users\User\Documents\Maestria\Laboratorios Maestria\MLIP_Lab6-main\MLIP_Lab6-main\Dockerfile
FROM continuumio/miniconda3:latest

# Crear directorio de trabajo
WORKDIR /app

# Copiar los archivos del proyecto
COPY . /app

# Crear el entorno Conda e instalar dependencias
RUN conda create -n mlip python=3.9 pytest numpy pandas scikit-learn -y

# Activar el entorno por defecto
SHELL ["conda", "run", "-n", "mlip", "/bin/bash", "-c"]

# Comando por defecto
CMD ["pytest"]
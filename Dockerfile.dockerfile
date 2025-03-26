FROM continuumio/miniconda3:latest

# Crear directorio de trabajo
WORKDIR /app

# Copiar los archivos del proyecto
COPY . /app

# Crear el entorno Conda e instalar dependencias
RUN conda create -n mlip python=3.9 pytest numpy pandas scikit-learn -y

# Cambiar el shell para usar bash
SHELL ["/bin/bash", "-c"]

# Comando por defecto
CMD ["bash", "-c", "source activate mlip && pytest"]
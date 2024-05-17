FROM python:3.8

# Instalar Ansible y nano
RUN pip install ansible && \
    apt-get update && \
    apt-get install -y nano

# Establecer el directorio de trabajo
WORKDIR /ansible

# Copiar el contenido del proyecto al contenedor
COPY . /ansible

# Actualizar el índice del repositorio y luego instalar los paquetes, redirigir la salida a logs
RUN apt-get update && \
    ansible-playbook install.yml --connection=local --inventory 127.0.0.1, > /ansible/install.log && \
    ansible-playbook create_env.yml --connection=local --inventory 127.0.0.1, > /ansible/create_env.log && \
    ansible-playbook execute_script.yml --connection=local --inventory 127.0.0.1, > /ansible/execute_script.log

# Comando de inicio para mostrar los logs y mantener el contenedor en ejecución
CMD cat /ansible/install.log /ansible/create_env.log /ansible/execute_script.log /ansible/prueba.log && tail -f /dev/null

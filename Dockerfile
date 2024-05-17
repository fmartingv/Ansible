FROM python:3.8

# Establecer el directorio de trabajo
WORKDIR /ansible

# Copiar el contenido del proyecto al contenedor
COPY . /ansible

# Instalar Ansible y ejecutar los playbooks
RUN pip install ansible

# Ejecutar los playbooks de Ansible cuando el contenedor se inicia
CMD ansible-playbook install.yml --connection=local --inventory 127.0.0.1, && \
    ansible-playbook create_env.yml --connection=local --inventory 127.0.0.1, && \
    ansible-playbook execute_script.yml --connection=local --inventory 127.0.0.1, && \
    cat /ansible/prueba.log && \
    tail -f /dev/null

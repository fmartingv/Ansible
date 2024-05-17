# Ansible
Dockerfile:
    -Instalación de Ansible y nano.
    -Configuración del inventario predeterminado de Ansible a localhost.
    -Ejecución de los playbooks de Ansible durante la construcción del contenedor.
    -Redirección de la salida de los comandos a archivos de log.


Playbooks de Ansible:
    -install.yml: Instalación de nano.
    -create_env.yml: Creación de un entorno virtual de Python.
    -execute_script.yml: Ejecución del script prueba.py dentro del entorno virtual y redirección de su salida a un archivo de log.

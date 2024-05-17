# Ansible

Vamos a usar con Docker Ansible para asi automatizar varias tareas.

  1.Crearemos una carpeta donde estaran los diferentes archivos, entre ellos estarán: 
  
  -create_env.yml: Playbook de Ansible para crear un entorno.
  
  ![image](https://github.com/fmartingv/Ansible/assets/120713266/e49d0f27-f81a-41dc-ab42-7842f5d58776)


  -execute_script.yml: Este Playbook ejecuta el script de prueba en el entorno y vemos la salida en un log.
  
  ![image](https://github.com/fmartingv/Ansible/assets/120713266/d6397f13-5dc7-4299-a7b5-d485b078951e)

  -install.yml: Este playbook de Ansible instala el editor de texto nano.
  
  ![image](https://github.com/fmartingv/Ansible/assets/120713266/d7f6bcd2-8833-4570-a8be-9f705f63b463)
  

  -Dockerfile: Asi construimos la imagen de docker isnatalando Ansible y Nano copiando los archivos del proyecto al contenedor y ejecutando los playbooks de Ansible.
  
   ![image](https://github.com/fmartingv/Ansible/assets/120713266/323bd107-6705-4e82-9b5d-ed51c12f6cf5)


  -prueba.py: Pequeño codigo de Python que hace un print para comprobar si va.
  
   ![image](https://github.com/fmartingv/Ansible/assets/120713266/a804f2bf-0db2-41ef-a4e5-a80b0d2201ac)

  2. Primero hacemos la imagen del docker con el build:
     
   ![image](https://github.com/fmartingv/Ansible/assets/120713266/5adcbb3c-ab24-4c8a-abd6-a15a6bf43409)

  3. Lo ejecutamos con docker run y vemos los resultados:
     
   ![image](https://github.com/fmartingv/Ansible/assets/120713266/57fc9536-1aab-48db-a57d-d97953f1e030)

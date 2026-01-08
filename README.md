# Prueba_Tecnica_Beconsult_JF
Proyecto Full Stack (Angular + Spring Boot + SQL) con autenticación de usuarios, operaciones CRUD, integración frontend-backend y documentación de buenas prácticas de desarrollo y seguridad básica.
Requerimiento : 
1. OBJETIVO
Desarrollar una aplicación Full Stack que permita autenticación de usuarios y mantenimiento (CRUD), evaluando buenas prácticas de desarrollo, seguridad básica, integración y documentación.
2. ALCANCE
Incluye:
- API REST (Login + CRUD Usuarios)
- Frontend Angular (Login y Mantenimiento)
- Base de datos SQL
- Integración Frontend – Backend

No incluye:
- Diseño gráfico avanzado
- Despliegue productivo
- Roles complejos
- Tests automatizados (opcional)


4. BACKEND
Requisitos:
- API REST
- Login con usuario y contraseña
- Contraseñas hasheadas
- CRUD de usuarios
- Manejo de errores HTTP
Endpoints mínimos:
POST /api/auth/login
POST /api/users
GET /api/users
GET /api/users/{id}
PUT /api/users/{id}
DELETE /api/users/{id}

5. BASE DE DATOS
Tabla Usuarios:
- Id
- Username
- Email
- Password
- Estado
- FechaCreacion

Listado : 
<img width="1373" height="579" alt="Captura de pantalla 2026-01-08 032852" src="https://github.com/user-attachments/assets/d54d48e2-63cb-4777-a151-5890ffcf1e6a" />
<img width="642" height="294" alt="Captura de pantalla 2026-01-08 033049" src="https://github.com/user-attachments/assets/dd3a0179-aad7-4335-a945-4199997d6694" />
<img width="609" height="364" alt="Captura de pantalla 2026-01-08 032914" src="https://github.com/user-attachments/assets/94edeb59-a537-43c4-a081-0deb1b5b3dfd" />
<img width="665" height="266" alt="Captura de pantalla 2026-01-08 033022" src="https://github.com/user-attachments/assets/110ed9a8-eacf-4a6e-9749-364a9b35c53c" />

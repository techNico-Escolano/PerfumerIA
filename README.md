# 🧪 Perfumer-IA | Sistema de Base de Datos Relacional

Este repositorio contiene el proyecto final de Bases de Datos desarrollado para el ciclo de **Desarrollo de Aplicaciones Multiplataforma (DAM)**. 

**Perfumer-IA** es el diseño, estructuración y explotación de una base de datos relacional completa orientada a la gestión de una perfumería moderna. El proyecto abarca desde el modelado Entidad-Relación hasta la creación de transacciones seguras para operaciones críticas del negocio.

## 🏗️ Arquitectura y Entidades

La base de datos está compuesta por **8 entidades principales** fuertemente relacionadas y normalizadas:
1. `clientes` [PK, tipos de suscripción]
2. `empleados` [PK, salarios, DNI]
3. `perfumes` [PK, control de stock, precios]
4. `marcas` [PK, detalles de fabricante]
5. `familias_olfativas` [PK, notas de salida, corazón y base]
6. `pedidos` [PK, estados de envío, FK clientes/empleados]
7. `detalles_pedido` [Tabla N:M para los artículos de cada pedido]
8. `pagos` [Control booleano de estados de pago]

## 🚀 Competencias Técnicas Demostradas

A diferencia de un esquema básico, este proyecto implementa características avanzadas de SQL:

* **Integridad Referencial Estricta:** Uso de `ALTER TABLE` para definir reglas complejas de borrado y actualización (`ON DELETE CASCADE`, `ON DELETE RESTRICT`, `ON DELETE SET NULL` y `ON UPDATE CASCADE`).
* **Consultas de Análisis de Negocio:**
  * Uso de múltiples `JOINs` para calcular la rentabilidad por marca o identificar las familias olfativas más lucrativas.
  * Agrupaciones (`GROUP BY`, `HAVING`) y cálculos matemáticos para evaluar el rendimiento de los empleados vs. sus salarios.
* **Consultas Operativas y Complejas:**
  * **Subconsultas correlacionadas** para generar alertas de inventario (Stock vs. Total Vendido) y comparativas de precios máximos.
  * Uso de `GROUP_CONCAT` para generar historiales desglosados de compras por cliente en una sola celda.
  * Uso de condicionales `CASE WHEN` para segmentar ventas en "Premium" y "Estándar".
  * Fusiones con `UNION` para directorios globales de *Mailing*.
* **Transacciones SQL (ACID):**
  * Scripts transaccionales con `START TRANSACTION` y `COMMIT` para asegurar la coherencia al realizar ventas complejas (insertar pedido, restar stock, registrar pago).
  * Uso de `ROLLBACK` como mecanismo de protección frente a errores humanos (ej. deshacer un descuento masivo aplicado por error).

## 📊 Modelo Entidad-Relación (ERD)
![Modelo E-R Perfumer-IA](enlace-a-tu-imagen.png)

## 🛠️ Cómo explorar este proyecto

En los archivos de este repositorio encontrarás:
1. El script SQL de creación de tablas y restricciones (DDL).
2. El script de inserción masiva de datos (DML) para poder probar la base de datos de forma realista.
3. El archivo con las 15 consultas avanzadas y transacciones preparadas para ejecutarse.

**Tecnologías:** MySQL / MariaDB, SQL Estándar.

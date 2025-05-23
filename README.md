# Infraestructura en Azure con Terraform

Este proyecto define una infraestructura modular en Azure usando Terraform. Se crean recursos como redes virtuales, subredes, grupos de seguridad, máquinas virtuales, cuentas de almacenamiento y configuraciones de monitoreo.

## ✅ Requisitos

- Tener una cuenta de Azure activa
- Tener instalados en tu máquina:
  - [Terraform](https://developer.hashicorp.com/terraform/downloads)
  - [Azure CLI](https://learn.microsoft.com/cli/azure/install-azure-cli)

## 🚀 Pasos para ejecutar

### 1. Iniciar sesión en Azure

Primero inicia sesión para autenticarte con tu cuenta de Azure:

```bash
az login
```
Si manejas varias suscripciones, selecciona una específica:

```bash
az account set --subscription "ID_O_NOMBRE_DE_TU_SUSCRIPCIÓN"
```
2. Inicializar Terraform

Esto descargará los proveedores y configurará el backend local:

```bash
terraform init
```
3. Ver el plan de ejecución
Este paso te permite ver los recursos que serán creados o modificados:

```bash
terraform plan
```
4. Aplicar los cambios
Este comando ejecuta el despliegue de la infraestructura:

```bash
terraform apply
```

5. Destruir los recursos (opcional)
Si quieres eliminar toda la infraestructura creada:

```bash
terraform destroy
```

📁 Estructura del Proyecto

````markdown
Copiar
Editar
.
├── main.tf                 # Define invocación de módulos
├── modules/
│   ├── network/            # VNet, Subnet, NSG
│   ├── compute/            # Máquina virtual
│   ├── storage/            # Cuenta y contenedor de almacenamiento
│   ├── monitoring/         # Diagnósticos y alertas
│   └── public_ip/          # Ip para las VM

```
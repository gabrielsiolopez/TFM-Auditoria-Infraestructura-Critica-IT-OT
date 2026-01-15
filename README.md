# 🛡️ Simulación de Ciberataque Integral en Infraestructura Crítica (IT/OT)

> **Trabajo de Fin de Máster (TFM)** | Máster en Ciberseguridad, Hacking Ético y Seguridad Ofensiva.

[![License](https://img.shields.io/badge/License-Academic-blue.svg)](#)
[![Cybersecurity](https://img.shields.io/badge/Focus-Red%20Team%20%2F%20Blue%20Team-red)](#)
[![Infrastructure](https://img.shields.io/badge/Infra-SCADA%20%2F%20IT-orange)](#)

## 📄 Descarga del Informe Técnico
Este repositorio contiene la documentación completa de la auditoría técnica.

👉 **[DESCARGAR PDF COMPLETO (TFM_Auditoria_Infraestructura_Critica_IT_OT.pdf)](./TFM_Auditoria_Infraestructura_Critica_IT_OT.pdf)**

---

## 🎯 Resumen Ejecutivo
Este proyecto simula un escenario real de compromiso a un operador crítico aeroportuario ("Empresa Criticosa"). El ejercicio abarca desde la intrusión inicial desde Internet hasta la manipulación física de sistemas industriales (encendido/apagado de balizas de pista), demostrando la convergencia de riesgos IT/OT.

El objetivo fue ejecutar una **Cyber Kill Chain** completa y diseñar posteriormente el plan de defensa y adecuación normativa (Ley PIC / ENS).

## 🛠️ Tecnologías y Herramientas Utilizadas
* **Ofensiva:** Kali Linux, Metasploit, Burp Suite, Nmap, Mimikatz, Chisel, John the Ripper.
* **Infraestructura:** Docker, Windows Server (2008/2012/2016), Ubuntu Server, pfSense.
* **OT/Industrial:** ModbusPAL (Simulación PLC), Protocolo Modbus/TCP.
* **Normativa:** MAGERIT v3, Esquema Nacional de Seguridad (ENS), Ley PIC.

## ⚡ Metodología de Ataque (Red Team)
El ejercicio se estructuró en 5 fases técnicas detalladas en el informe:

1.  **Acceso Inicial:** Explotación de vulnerabilidad **SSTI** en aplicación web y **Docker Breakout** (escape de contenedor a host).
2.  **Pivoting:** Evasión de segmentación de red mediante túneles **SOCKS5** (Chisel/Proxychains).
3.  **Identidad:** Compromiso de Active Directory mediante **Kerberoasting** y cracking de cuentas de servicio.
4.  **Movimiento Lateral:** Explotación de sistemas Legacy (**EternalBlue**) y compromiso de router perimetral (manipulación de NAT).
5.  **Impacto OT:** Control del sistema **SCADA** mediante RDP y manipulación de registros Modbus para denegación de servicio en iluminación de pistas.

## 🛡️ Defensa y Compliance (Blue Team)
Tras el incidente simulado, se desarrolló:
* Análisis de Riesgos con metodología **MAGERIT**.
* Plan de adecuación al **Esquema Nacional de Seguridad (ENS)**.
* Diseño de arquitectura segura y segmentación IT/OT.

---
*Este proyecto fue realizado con fines puramente académicos y educativos en un entorno de laboratorio aislado.*

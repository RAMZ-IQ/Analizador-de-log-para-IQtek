#!/bin/bash

# Esta parte del script busca errores en el servidor "servidor.log" y genera un reporte basado en el log "alerta_de_hoy.txt"

ARCHIVO_LOG="servidor.log"
REPORTE="alerta_de_hoy.txt"

# Encabezado con quién y cuándo se generó el reporte
echo "Reporte generado por: $(whoami)" > "$REPORTE"
echo "Fecha del reporte: $(date)" >> "$REPORTE"
echo "" >> "$REPORTE"

# Buscamos las líneas con ERROR y CRITICAL y las guardamos en el reporte
grep -E "ERROR:|CRITICAL:" "$ARCHIVO_LOG" >> "$REPORTE"

echo "reporte generado abre $REPORTE"

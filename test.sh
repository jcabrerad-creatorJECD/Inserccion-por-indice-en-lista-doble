#!/bin/bash

# ─── Colores ────────────────────────────────────────────────────────────────────
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

echo "========================================"
echo "  Autograder: Lista Doblemente Enlazada"
echo "========================================"
echo ""
echo "🔧 TEST: Compilación de Main.java"

javac Main.java 2>&1

if [ $? -eq 0 ]; then
    echo -e "${GREEN}✅ PASS: El archivo compiló correctamente.${NC}"
    exit 0
else
    echo -e "${RED}❌ FAIL: El archivo no compiló. Revisa los errores anteriores.${NC}"
    exit 1
fi

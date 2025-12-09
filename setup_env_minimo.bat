@echo off
echo ============================================
echo  Creando entorno virtual para el proyecto...
echo ============================================

REM 1. Crear entorno virtual .venv si no existe
IF NOT EXIST .venv (
    python -m venv .venv
)

REM 2. Activar entorno virtual
call .venv\Scripts\activate

echo.
echo ============================================
echo  Instalando dependencias MINIMAS...
echo  (requirements_minimos.txt)
echo ============================================

pip install --upgrade pip
pip install -r requirements_minimos.txt

echo.
echo ============================================
echo  Listo.
echo  Para trabajar, activa el entorno con:
echo      .venv\Scripts\activate
echo ============================================
pause

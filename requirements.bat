@echo off
echo Installing Python requirements...
python -m venv venv
call venv\Scripts\activate
pip install -r requirements.txt
echo Installation complete.
pause

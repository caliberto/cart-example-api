```json
{
    // Usare IntelliSense per informazioni sui possibili attributi.
    // Al passaggio del mouse vengono visualizzate le descrizioni degli attributi esistenti.
    // Per altre informazioni, visitare: https://go.microsoft.com/fwlink/?linkid=830387
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Launch app",
            "type": "python",
            "request": "launch",
            "module": "flask",
            "env": {
                "FLASK_APP": "route.py",
                "FLASK_ENV": "development"
            },
            "args": [
                "run",
                "--no-debugger"
            ],
            "jinja": true,
            "justMyCode": true
        },
        {
            "name": "Build db",
            "type": "python",
            "request": "launch",
            "program": "init_db.py",
            "console": "integratedTerminal"
        }
    ]
}
```

Lanciare i seguenti comandi al primo avvio del progetto:

```bash
py -3 -m venv venv
venv/Scirpts/activate
pip install Flask
pip install -U flask-cors
```
```json
{
    // Usare IntelliSense per informazioni sui possibili attributi.
    // Al passaggio del mouse vengono visualizzate le descrizioni degli attributi esistenti.
    // Per altre informazioni, visitare: https://go.microsoft.com/fwlink/?linkid=830387
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Python: Flask",
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
        }
    ]
}
```
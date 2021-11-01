from flask import Flask
from wsgiref.simple_server import make_server

app = Flask(__name__)


@app.route("/hello1")
def hello_world():
    return "hello_world_nihao"

if __name__ == "__main__":
    server = make_server('127.0.0.1', 5000, app)
    server.serve_forever()
    app.run(debug=True)


from flask import Flask, jsonify
import os

app = Flask(__name__)

@app.get("/")
def home():
    return jsonify(message="Hello, World!", service="flask-app")

@app.get("/healthz")
def healthz():
    return jsonify(status="ok")

if __name__ == "__main__":
    port = int(os.environ.get("PORT", "5000"))
    app.run(host="0.0.0.0", port=port)

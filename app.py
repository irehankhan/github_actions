from flask import Flask
import os

app = Flask(__name__)

app_name = os.environ.get('APP_NAME', 'EveryOne')

@app.route('/')
def home():
    return f'Hello, {app_name}!'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

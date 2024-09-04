from flask import Flask, jsonify

app = Flask(__name__)

counter_value = 0

@app.route('/count', methods=['GET'])
def counter():
    global counter_value
    counter_value += 1
    return jsonify({'counter': counter_value})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

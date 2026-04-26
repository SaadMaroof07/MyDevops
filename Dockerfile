from flask import Flask
import redis

app = Flask(__name__)
# Yahan 'db' wahi hai jo tumne docker-compose mein rakha hai
cache = redis.Redis(host='db', port=6379)

def get_hit_count():
    return cache.incr('hits')

@app.route('/')
def hello():
    count = get_hit_count()
    return f'Assalam o Alaikum! Hits: {count}\n'

if __name__ == "__main__":
    # YEH LINE ZAROORI HAI
    app.run(host='0.0.0.0', port=5000)
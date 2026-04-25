import time
import redis
cache = redis.Redis(host='db', port=6379)
def get_hit_count():
    return cache.incr('hits')
print("system start ho rha hai...")
while True:
      count=get_hit_count()
      print(f'assalam o alaikum Hits{count}')  
      time.sleep(2)

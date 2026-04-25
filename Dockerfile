# Hum 'slim' version use kar rahe hain jo size mein chota hota hai
FROM python:3.9-slim

# Container ke andar kaam ki jagah
WORKDIR /app

# Pehle requirements copy karke install karte hain (ye caching mein help karta hai)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Baaki sara code copy karo
COPY . .

# App kis port par chalegi
EXPOSE 5000

# App ko start karne ki command
CMD ["python", "app.py"]
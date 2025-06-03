#!/bin/bash

# Start backend
uvicorn backend:app --reload --port 8001 &

# Optional: wait a second
sleep 2

# Start frontend
gunicorn frontend:app --bind 0.0.0.0:5000

#!/bin/bash

# Start backend
uvicorn backend:app --reload --port 8001 &

# Optional: wait a second
sleep 1

# Start frontend
python frontend.py

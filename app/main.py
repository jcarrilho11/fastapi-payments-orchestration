from fastapi import FastAPI
from app.db import init_db

app = FastAPI()

@app.on_event("startup")
async def startup():
    await init_db()  # DB setup at app start

@app.get("/health")
async def health():
    return {"status": "ok"}

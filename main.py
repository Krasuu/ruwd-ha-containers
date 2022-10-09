from fastapi import FastAPI
from pydantic import BaseSettings

class Settings(BaseSettings):
    POD_IP: str = "No IP provided"

settings = Settings()
app = FastAPI()

@app.get("/")
async def root():
    return {"IP address of the pod": settings.POD_IP}

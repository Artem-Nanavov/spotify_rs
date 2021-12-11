#!/usr/bin/env python3
import os

import uvicorn
from dotenv import load_dotenv
from fastapi import FastAPI, Response

from recommendations import RecommendationsManager

load_dotenv()

DEBUG = os.getenv('DEBUG', 'true').lower() == 'true'

app = FastAPI(debug=DEBUG)

manager = RecommendationsManager()


@app.get('/{user_id}')
async def recommendations(user_id: int):
    return Response(str(manager.get_recommendations(user_id)))


if __name__ == '__main__':
    uvicorn.run(app)

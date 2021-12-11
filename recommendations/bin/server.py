#!/usr/bin/env python3
import os

import uvicorn
from dotenv import load_dotenv
from fastapi import FastAPI

from recommendations import RecommendationsManager

load_dotenv()

DEBUG = os.getenv('DEBUG', 'true').lower() == 'true'

app = FastAPI(debug=DEBUG)

manager = RecommendationsManager()


@app.get('/{user_id}')
async def recommendations(user_id: int):
    return manager.get_recommendations(user_id)


@app.get('/get-sales')
async def sales():
    return [
        {
            'лента': [
                'купи две бутылки пива, третью тоже купи'
            ],
            'пятерочка': [
                'два сырка по цене двух',
            ]
        },
    ]


if __name__ == '__main__':
    uvicorn.run('server:app', reload=DEBUG)

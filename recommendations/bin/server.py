#!/usr/bin/env python3
import os
import json
from starlette import status

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


@app.get('/prices/{item_name}')
async def item_prices(item_name: str):
    prices = manager.get_item_prices(item_name)
    if not prices:
        return Response(json.dumps({'error': 'item not found'}), status_code=status.HTTP_400_BAD_REQUEST)
    return prices

if __name__ == '__main__':
    uvicorn.run('server:app', reload=DEBUG)

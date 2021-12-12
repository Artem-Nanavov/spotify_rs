import json

import pandas as pd
import pickle
import numpy as np


class RecommendationsManager:
    def __init__(self):
        self.df = pd.read_csv('data/data.csv', encoding='utf-8')

        with open('objects/tokenizer.pickle', 'rb') as f:
            self.tokenizer = pickle.load(f)

        with open('objects/nearest_neighbors_model.pickle', 'rb') as f:
            self.nnm = pickle.load(f)

        self.df['token'] = self.df.replace(r'\s', '', regex=True).apply(
            lambda row: self.tokenizer.word_index[row.ProductName.lower()], axis=1)

    def get_recommendations(self, user_id: int):
        data = self.df.token

        max_checks_per_user = 3

        user_checks = self.df[self.df.UserId == user_id]

        processed_user_checks = []
        for check_id in range(max_checks_per_user):
            products = []
            for item in user_checks[user_checks.CheckId == check_id]['token'].iteritems():
                products.append(item[1])

            processed_user_checks.append(products)

        total_recommended_items = []
        for user_check in processed_user_checks:
            while len(user_check[:9]) != 9:
                user_check.append(0)

            _, indices = self.nnm.kneighbors([user_check[:9]])
            neighbors = np.array(data)[indices.reshape(3)]

            for neighbor in neighbors:
                total_recommended_items.append(neighbor)

        total_recommended_items = self.df[(self.df.token.isin(
            total_recommended_items)) & (self.df.UserId != user_id)]

        total_recommended_items = total_recommended_items.drop_duplicates(
            subset=['token'])[['ProductName', 'ProductCost']]

        result = json.loads(
            total_recommended_items.to_json(orient='table'))['data']

        for i, _ in enumerate(result):
            del result[i]['index']

        return result

    @staticmethod
    def _get_price(json):
        return

    def get_item_prices(self, item_name: str):
        prices = self.df[self.df.ProductName == item_name].drop_duplicates(
            subset=['MerchantName'])[['ProductCost', 'MerchantName']]

        result = json.loads(prices.to_json(orient='table'))['data']

        for i, _ in enumerate(result):
            del result[i]['index']

        result = sorted(result, key=lambda x: int(x.get('ProductCost', 0)))

        return result

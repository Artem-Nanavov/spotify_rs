import pandas as pd
import pickle


class RecommendationsManager:
    def __init__(self):
        self.df = pd.read_csv('data/data.csv').replace(r'\s', '', regex=True)

        with open('objects/tokenizer.pickle', 'rb') as f:
            self.tokenizer = pickle.load(f)

        with open('objects/nearest_neighbors_model.pickle', 'rb') as f:
            self.nnm = pickle.load(f)

        self.df['token'] = self.df.apply(
            lambda row: self.tokenizer.word_index[
                row.ProductName.lower(),
            ], axis=1)

    def get_recommendations(self, user_id: int):
        return self.df.to_string()

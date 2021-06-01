'''
Api - aplikacja przelicza waluty, funty na zlotowki
'''
class CurrencyCalculator():
        
    def __init__(self):
        self.euro_exchange_rate = 0
        self.pound_exchange_rate = 0 

    def set_euro_rate(self, rate):
        self.euro_exchange_rate = rate

    def set_pound_rate(self, rate):
        self.pound_exchange_rate = rate

    def exchange_pln_euro(self, amount):
        return self.euro_exchange_rate * amount

    def exchange_pln_pound(self, amount):
        return self.pound_exchange_rate * amount

# def __init__(self):
# euro_exchange_rate = 0
# pound_exchange_rate = 0
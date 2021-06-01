# -*- coding: utf-8 -*-
import unittest
from kantor import CurrencyCalculator

class TestCurrencyCalculator(unittest.TestCase):

    #setUp function called automatically before test - sets default stuff
    #whatever is here does not change its value
    def setUp(self):
        self.calculator = CurrencyCalculator()

    def testIsThereAnEuroRate(self):
        assert self.calculator.euro_exchange_rate is not None, "Calculator euro_exchange_rate is None"

    def testIsThereAPoundRate(self):
        assert self.calculator.pound_exchange_rate is not None, "Calculator pound_exchange_rate is None"
    
    def testCanISetEuroRate(self):
        self.calculator.set_euro_rate(4.53)
        assert self.calculator.euro_exchange_rate == 4.53

    def testCanISetPoundRate(self):
        self.calculator.set_pound_rate(5.22)
        assert self.calculator.pound_exchange_rate == 5.22

    ### Homework
    def testCanIExchangePLNtoEuro(self):
        self.calculator.set_euro_rate(4.53)
        self.assertEqual(self.calculator.exchange_pln_euro(100),453.0)
        
    def testCanIExchangePLNtoPound(self):
        self.calculator.set_pound_rate(5.22)
        self.assertEqual(self.calculator.exchange_pln_pound(100),522.0)
        




if __name__=="__main__":
    unittest.main()
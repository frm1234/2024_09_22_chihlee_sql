
import pandas_datareader.data as web
import yfinance as yf
yf.pdr_override()
web.get_data_yahoo('2330.TW')
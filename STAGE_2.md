# Business Data Storytelling

### 1. Relevante datakilder fra internettet og andre medier som bruges i vores eksperiment. 

**Links til at hente relevante artikler, tweets eller beskeder.:**

* [Yahoo finance](https://finance.yahoo.com/)
* [News API](https://newsapi.org/pricing)
* [Twitter: @Investors Tesla](https://twitter.com/search?q=%40investors.com%20tesla&src=typed_query)

**Links til at hente stock data:**
* [Alpha Vantage](https://www.alphavantage.co/)
    * [TESLA, 5min interval, JSON format](https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=TELA&interval=5min&apikey=dcfec1f32fa846f98fd8f0849bbcd21d)

***

2. Integrate the sources in shared repository by either ETL or ELT process (you can use public software, own code, or integration of tools)

Jeg vil forslå at vi benytter os ELT (Extract, Load, and Transform)
Det vil sige at vi henter data, gemme data evt. i textfile og først derefter transformere vores data ( normalisering, cleaning....)

1. Extract (hent data fra api)
2. Load (load data fra db til jupyter notebook)
3. Transform data

* Billede af vores database diagram
* Kode api i python for fetching artikel/stock data og persist data i DB
* Laver en notebook hvor vi transformere vores data

https://www.xplenty.com/blog/etl-vs-elt/#overview

***

3.

* [Link til Datastory](*)
from google.cloud import bigquery

client = bigquery.Client()

query = """
SELECT *
FROM `retail_dw.productos`
LIMIT 10
"""

df = client.query(query).to_dataframe()

print(df)
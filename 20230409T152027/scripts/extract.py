import pandas as pd
from frictionless import Package

package = Package('datapackage.yaml')

sales = package.get_resource('sales').to_pandas()
sales.dtypes

date = package.get_resource('date').to_pandas()
date.dtypes

df = pd.merge(sales, date, left_on='date_id', right_on='id')
df.groupby('yearmonth').agg({'total_price': 'sum'})['total_price']

package.validate()


package.to_json('datapackage.json')
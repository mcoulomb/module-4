1. Only int_trips_unioned model will be run since the '+' operator was not in front of the dbt run --select command.

2. The test will fail because an invalid value is detected.

3. select count(*) from `ny_taxi.fct_monthly_zone_revenue`

Answer: 12,184


4. select pickup_zone, sum(revenue_monthly_total_amount) as total_amount from `ny_taxi.fct_monthly_zone_revenue` where service_type = 'Green' and EXTRACT(YEAR FROM revenue_month) = 2020 GROUP BY pickup_zone ORDER BY total_amount DESC Limit 10;

Answer: East Harlem North

5. select sum(total_monthly_trips) from `ny_taxi.fct_monthly_zone_revenue` where service_type = 'Green' and revenue_month = DATE('2019-10-01')

Answer: 384,624

6. select count(*) from `ny_taxi.stg_fhv_tripdata`

Answer: 43,244,693

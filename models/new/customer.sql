{{ config(materialized='table') }}


select c.c_custkey,c.c_name,c.c_nationkey , sum(o.o_totalprice) as total_price from snowflake_sample_data.TPCH_SF1.customer 
c join snowflake_sample_data.TPCH_SF1.orders o 
on c.c_custkey = o.o_custkey group by c.c_custkey,c.c_name,c.c_nationkey 





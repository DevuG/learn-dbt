{{ config(materialized='table') }}


select o_orderdate, sum(o_totalprice) as total_price from snowflake_sample_data.TPCH_SF1.orders  group by o_orderdate






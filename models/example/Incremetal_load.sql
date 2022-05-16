{{config(materialized='incremental', unique_key='d_date')}}



select * from snowflake_sample_data.TPCDS_SF10TCL.DATE_DIM where d_date <=current_date

{% if is_incremental() %}
   and d_date> (select max(d_date) from {{this }})
{% endif %}


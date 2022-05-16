
{{config(materialized ='incremental' , unique ='T_TIME_SK')}}

select * from SNOWFLAKE_SAMPLE_DATA.TPCDS_SF10TCL.TIME_DIM  where 
to_time(CONCAT(T_HOUR,':',T_MINUTE,':',T_SECOND)) <= current_time

{% if is_incremental() %}
   and T_TIME_SK > 
   (select max(T_TIME_SK) from {{this }})
{% endif %}






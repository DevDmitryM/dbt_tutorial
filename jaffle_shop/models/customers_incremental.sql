{{
  config(
    materialized='incremental'
  )
}}

select *,
    emp_val * 2 as emp_new_val
from test_increment_no_update

{% if is_incremental() %}

where dttm > (select coalesce(max(dttm),'1900-01-01' :: timestamp) from {{ this }} )

{% endif %}
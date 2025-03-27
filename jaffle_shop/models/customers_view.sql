{{
  config(
    materialized='view'
  )
}}

with test as (
select test_col, test_col || '_view' from test
)

select * from test
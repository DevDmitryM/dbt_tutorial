{{
  config(
    materialized='table'
  )
}}

with test as (
select test_col, test_col || '_table' from test
)

select * from test
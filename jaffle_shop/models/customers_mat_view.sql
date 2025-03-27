{{
  config(
    materialized='materialized_view'
  )
}}

with test as (
select test_col, test_col || '_mat_view_new', test_col || '_mat_view_new_new' from test
)

select * from test
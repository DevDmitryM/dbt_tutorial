{{
  config(
    materialized='ephemeral'
  )
}}

with test as (
select test_col, test_col || '_ephemeral' from test
)

select * from test
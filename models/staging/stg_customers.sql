-- I'm adding these lines to create 
-- a merge conflict in the dbt Cloud IDE

with

source as (

    select * from {{ source('jaffle_shop', 'raw_customers') }}

),

renamed as (

    select

        ----------  ids
        id as customer_id,

        ---------- text
        name as customer_nam

    from source

)

select * from renamed

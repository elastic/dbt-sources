
with source as (

    select * from {{ source('raw_netsuite', 'customer_sales_teams') }}

),

renamed as (

    select
        contribution,
        customer_id,
        date_last_modified,
        isprimary,
        sales_rep_id,
        sales_role_id

    from source

)

select * from renamed

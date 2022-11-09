
with source as (

    select * from {{ source('raw_netsuite', 'customer_partner_sales_teams') }}

),

renamed as (

    select
        contribution,
        customer_id,
        date_last_modified,
        isprimary,
        partner_id,
        sales_role_id

    from source

)

select * from renamed

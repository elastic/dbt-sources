
with source as (

    select * from {{ source('raw_netsuite', 'partner_sales_roles_history') }}

),

renamed as (

    select
        date_last_modified,
        isinactive,
        name,
        parent_id,
        partner_sales_role_extid,
        partner_sales_role_id

    from source

)

select * from renamed

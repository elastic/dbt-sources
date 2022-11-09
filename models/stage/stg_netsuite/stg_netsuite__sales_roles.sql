
with source as (

    select * from {{ source('raw_netsuite', 'sales_roles') }}

),

renamed as (

    select
        date_last_modified,
        description,
        is_inactive,
        is_sales_rep_role,
        name,
        sales_role_extid,
        sales_role_id

    from source

)

select * from renamed

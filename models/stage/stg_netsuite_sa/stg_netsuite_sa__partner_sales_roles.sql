
with source as (

    select * from {{ source('raw_netsuite_sa', 'partner_sales_roles') }}

),

renamed as (

    select
        partner_sales_role_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        date_last_modified,
        isinactive,
        name,
        parent_id,
        partner_sales_role_extid

    from source

)

select * from renamed
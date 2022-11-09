
with source as (

    select * from {{ source('raw_netsuite_sa', 'customer_partner_sales_teams') }}

),

renamed as (

    select
        customer_id,
        partner_id,
        _fivetran_deleted,
        _fivetran_synced,
        contribution,
        date_deleted,
        date_last_modified,
        isprimary,
        sales_role_id

    from source

)

select * from renamed
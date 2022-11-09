
with source as (

    select * from {{ source('raw_netsuite_sa', 'trans_partner_sales_teams') }}

),

renamed as (

    select
        partner_id,
        transaction_id,
        _fivetran_deleted,
        _fivetran_synced,
        contribution,
        date_deleted,
        date_last_modified,
        isprimary,
        partner_sales_role_id

    from source

)

select * from renamed

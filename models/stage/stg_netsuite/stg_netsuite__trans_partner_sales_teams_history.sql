
with source as (

    select * from {{ source('raw_netsuite', 'trans_partner_sales_teams_history') }}

),

renamed as (

    select
        contribution,
        date_last_modified,
        isprimary,
        partner_id,
        partner_sales_role_id,
        transaction_id

    from source

)

select * from renamed

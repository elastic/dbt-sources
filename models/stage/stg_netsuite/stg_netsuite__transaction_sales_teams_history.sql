
with source as (

    select * from {{ source('raw_netsuite', 'transaction_sales_teams_history') }}

),

renamed as (

    select
        contribution,
        date_last_modified,
        isprimary,
        sales_rep_id,
        sales_role_id,
        transaction_id

    from source

)

select * from renamed

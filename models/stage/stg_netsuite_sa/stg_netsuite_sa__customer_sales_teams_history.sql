
with source as (

    select * from {{ source('raw_netsuite_sa', 'customer_sales_teams_history') }}

),

renamed as (

    select
        customer_id,
        sales_rep_id,
        _fivetran_synced,
        contribution,
        isprimary,
        sales_role_id,
        date_last_modified,
        _fivetran_deleted,
        date_deleted,
        partition_date

    from source

)

select * from renamed

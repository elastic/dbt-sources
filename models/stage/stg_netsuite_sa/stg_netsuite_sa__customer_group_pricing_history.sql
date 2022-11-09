
with source as (

    select * from {{ source('raw_netsuite_sa', 'customer_group_pricing_history') }}

),

renamed as (

    select
        customer_id,
        pricing_group_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        price_type_id,
        partition_date

    from source

)

select * from renamed


with source as (

    select * from {{ source('raw_netsuite_sa', 'customer_group_pricing') }}

),

renamed as (

    select
        customer_id,
        pricing_group_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        price_type_id

    from source

)

select * from renamed

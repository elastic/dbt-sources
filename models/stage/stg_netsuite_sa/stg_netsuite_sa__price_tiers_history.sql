
with source as (

    select * from {{ source('raw_netsuite_sa', 'price_tiers_history') }}

),

renamed as (

    select
        price_tier_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        from_quantity,
        maximum_quantity,
        minimum_quantity,
        price_plan_id,
        price_tier,
        price_value,
        pricing_option,
        partition_date

    from source

)

select * from renamed

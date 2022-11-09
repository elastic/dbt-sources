
with source as (

    select * from {{ source('raw_netsuite_sa', 'price_plans_history') }}

),

renamed as (

    select
        price_plan_id,
        _fivetran_deleted,
        _fivetran_synced,
        currency,
        date_created,
        date_deleted,
        included_quantity,
        price_plan_extid,
        price_plan_type,
        partition_date

    from source

)

select * from renamed
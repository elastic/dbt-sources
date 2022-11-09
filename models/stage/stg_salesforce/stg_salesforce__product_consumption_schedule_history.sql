
with source as (

    select * from {{ source('raw_salesforce', 'product_consumption_schedule_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        consumption_schedule_id,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        product_id,
        system_modstamp

    from source

)

select * from renamed

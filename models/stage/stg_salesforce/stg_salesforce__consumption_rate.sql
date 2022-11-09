
with source as (

    select * from {{ source('raw_salesforce', 'consumption_rate') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        consumption_schedule_id,
        created_by_id,
        created_date,
        currency_iso_code,
        description,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        lower_bound,
        name,
        price,
        pricing_method,
        processing_order,
        system_modstamp,
        upper_bound

    from source

)

select * from renamed


with source as (

    select * from {{ source('raw_salesforce', 'business_hours_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_deleted,
        _fivetran_synced,
        created_by_id,
        created_date,
        friday_end_time,
        friday_start_time,
        is_active,
        is_default,
        last_modified_by_id,
        last_modified_date,
        last_viewed_date,
        monday_end_time,
        monday_start_time,
        name,
        saturday_end_time,
        saturday_start_time,
        sunday_end_time,
        sunday_start_time,
        system_modstamp,
        thursday_end_time,
        thursday_start_time,
        time_zone_sid_key,
        tuesday_end_time,
        tuesday_start_time,
        wednesday_end_time,
        wednesday_start_time

    from source

)

select * from renamed

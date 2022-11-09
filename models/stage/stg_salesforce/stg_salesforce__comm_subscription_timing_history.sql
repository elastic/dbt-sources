
with source as (

    select * from {{ source('raw_salesforce', 'comm_subscription_timing_history') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        comm_subscription_timing_id,
        created_by_id,
        created_date,
        data_type,
        field,
        is_deleted,
        new_value,
        old_value,
        comm_subscription_consent_id,
        currency_iso_code,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        offset,
        preferred_time_end,
        preferred_time_start,
        preferred_time_zone,
        system_modstamp,
        unit

    from source

)

select * from renamed


with source as (

    select * from {{ source('raw_salesforce', 'comm_subscription_timing') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        comm_subscription_consent_id,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        system_modstamp,
        unit,
        preferred_time_zone,
        offset,
        preferred_time_start,
        preferred_time_end

    from source

)

select * from renamed

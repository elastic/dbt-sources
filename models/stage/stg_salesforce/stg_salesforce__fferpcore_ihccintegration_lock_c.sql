
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_ihccintegration_lock_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_direction_c,
        fferpcore_integration_id_c,
        fferpcore_process_locked_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed

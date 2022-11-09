
with source as (

    select * from {{ source('raw_salesforce', 'mkto_si_marketo_settings_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        mkto_si_batch_size_c,
        mkto_si_cache_minutes_until_expired_c,
        mkto_si_cache_state_c,
        mkto_si_minutes_to_refresh_cache_c,
        mkto_si_minutes_to_refresh_lead_feed_c,
        mkto_si_use_cache_c,
        name,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed

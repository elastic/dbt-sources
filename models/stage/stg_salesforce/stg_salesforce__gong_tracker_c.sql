
with source as (

    select * from {{ source('raw_salesforce', 'gong_tracker_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        gong_gong_interaction_c,
        gong_has_competitor_c,
        gong_tracker_occurrences_c,
        gong_tracker_phrase_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed

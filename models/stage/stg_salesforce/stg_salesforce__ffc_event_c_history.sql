
with source as (

    select * from {{ source('raw_salesforce', 'ffc_event_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffc_date_created_c,
        ffc_description_c,
        ffc_link_c,
        ffc_sequence_c,
        ffc_start_date_c,
        ffc_start_time_c,
        ffc_thumbnail_large_uri_c,
        ffc_thumbnail_small_uri_c,
        ffc_title_c,
        ffc_type_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed

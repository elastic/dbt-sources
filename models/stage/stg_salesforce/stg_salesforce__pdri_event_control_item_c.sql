
with source as (

    select * from {{ source('raw_salesforce', 'pdri_event_control_item_c') }}

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
        name,
        pdri_event_control_c,
        pdri_event_name_c,
        pdri_event_namespace_c,
        system_modstamp

    from source

)

select * from renamed

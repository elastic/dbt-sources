
with source as (

    select * from {{ source('raw_salesforce', 'fstr_step_event_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fstr_event_subtype_c,
        fstr_event_subtype_name_c,
        fstr_event_type_c,
        fstr_event_type_name_c,
        fstr_status_c,
        fstr_step_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed

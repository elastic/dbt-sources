
with source as (

    select * from {{ source('raw_salesforce', 'fstr_orchestrate_object_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fstr_object_label_c,
        fstr_object_name_c,
        fstr_process_object_c,
        fstr_step_object_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed

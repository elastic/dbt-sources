
with source as (

    select * from {{ source('raw_salesforce', 'fstr_process_archive_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fstr_account_c,
        fstr_completion_date_c,
        fstr_completion_date_type_c,
        fstr_data_c,
        fstr_date_c,
        fstr_link_c,
        fstr_object_type_c,
        fstr_percent_complete_c,
        fstr_record_id_c,
        fstr_start_date_c,
        fstr_target_completion_date_c,
        fstr_type_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed

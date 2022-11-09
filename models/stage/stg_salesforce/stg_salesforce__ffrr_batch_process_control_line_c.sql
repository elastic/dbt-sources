
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_batch_process_control_line_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_batch_id_c,
        ffrr_batch_process_control_c,
        ffrr_record_id_in_use_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
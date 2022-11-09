
with source as (

    select * from {{ source('raw_salesforce', 'zoom_app_zoom_call_backup_log_c') }}

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
        owner_id,
        system_modstamp,
        zoom_app_calllog_unique_id_c

    from source

)

select * from renamed

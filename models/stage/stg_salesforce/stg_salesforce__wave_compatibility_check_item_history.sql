
with source as (

    select * from {{ source('raw_salesforce', 'wave_compatibility_check_item_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        payload,
        system_modstamp,
        task_name,
        task_result,
        template_api_name,
        template_version,
        wave_auto_install_request_id

    from source

)

select * from renamed

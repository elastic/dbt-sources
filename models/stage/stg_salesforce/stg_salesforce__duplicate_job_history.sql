
with source as (

    select * from {{ source('raw_salesforce', 'duplicate_job_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        duplicate_job_definition_id,
        duplicate_job_status,
        end_date_time,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        num_duplicate_record_items,
        num_duplicate_record_sets,
        num_records_scanned,
        result_list_view_id,
        start_date_time,
        system_modstamp

    from source

)

select * from renamed


with source as (

    select * from {{ source('raw_salesforce', 'ffrr_batch_tracking_control_line_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_batch_id_c,
        ffrr_batch_tracking_control_c,
        ffrr_batches_processed_c,
        ffrr_total_batches_c,
        id,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed

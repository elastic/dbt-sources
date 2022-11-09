
with source as (

    select * from {{ source('raw_salesforce', 'vh_execution_log_c_history') }}

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
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp,
        vh_event_end_date_c,
        vh_event_start_date_c,
        vh_type_c

    from source

)

select * from renamed

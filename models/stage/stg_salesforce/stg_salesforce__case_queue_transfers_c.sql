
with source as (

    select * from {{ source('raw_salesforce', 'case_queue_transfers_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp,
        from_c,
        last_referenced_date,
        last_viewed_date,
        new_attributes_json_c,
        run_support_processes_c,
        to_c

    from source

)

select * from renamed

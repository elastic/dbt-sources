
with source as (

    select * from {{ source('raw_salesforce', 'duplicate_record_set_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        duplicate_rule_id,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        parent_id,
        record_count,
        system_modstamp

    from source

)

select * from renamed


with source as (

    select * from {{ source('raw_salesforce', 'fivetran_audit_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        done,
        message,
        progress,
        rows_updated_or_inserted,
        schema,
        start,
        status,
        table,
        update_id,
        update_started

    from source

)

select * from renamed

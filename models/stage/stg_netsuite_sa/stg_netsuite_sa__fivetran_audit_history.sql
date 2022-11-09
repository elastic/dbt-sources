
with source as (

    select * from {{ source('raw_netsuite_sa', 'fivetran_audit_history') }}

),

renamed as (

    select
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
        update_started,
        partition_date

    from source

)

select * from renamed

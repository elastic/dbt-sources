
with source as (

    select * from {{ source('raw_marketo', 'fivetran_audit_history') }}

),

renamed as (

    select
        id,
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
        _fivetran_synced,
        partition_date

    from source

)

select * from renamed

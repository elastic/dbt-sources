
with source as (

    select * from {{ source('raw_salesforce', 'fivetran_audit') }}

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
        update_started

    from source

)

select * from renamed

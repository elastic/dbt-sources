
with source as (

    select * from {{ source('raw_marketo', 'fivetran_audit') }}

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
        _fivetran_synced

    from source

)

select * from renamed

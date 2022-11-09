
with source as (

    select * from {{ source('raw_salesforce', 'fivetran_query_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        done,
        merge_mode,
        modified_field,
        modified_since_inclusive,
        query,
        rows_updated_or_inserted,
        source_api,
        source_object,
        start

    from source

)

select * from renamed

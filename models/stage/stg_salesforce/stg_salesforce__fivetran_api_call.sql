
with source as (

    select * from {{ source('raw_salesforce', 'fivetran_api_call') }}

),

renamed as (

    select
        start,
        _fivetran_synced,
        method,
        update_id,
        uri

    from source

)

select * from renamed

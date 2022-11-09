
with source as (

    select * from {{ source('raw_marketo', 'api_usage') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        count,
        date,
        user_id

    from source

)

select * from renamed


with source as (

    select * from {{ source('raw_marketo', 'api_usage_history') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        count,
        date,
        user_id,
        partition_date

    from source

)

select * from renamed

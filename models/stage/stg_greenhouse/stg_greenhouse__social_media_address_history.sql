
with source as (

    select * from {{ source('raw_greenhouse', 'social_media_address_history') }}

),

renamed as (

    select
        candidate_id,
        index,
        _fivetran_synced,
        value,
        partition_date

    from source

)

select * from renamed

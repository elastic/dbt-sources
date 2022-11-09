
with source as (

    select * from {{ source('raw_greenhouse', 'social_media_address') }}

),

renamed as (

    select
        candidate_id,
        index,
        _fivetran_synced,
        value

    from source

)

select * from renamed

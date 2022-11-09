
with source as (

    select * from {{ source('raw_greenhouse', 'scorecard_attribute') }}

),

renamed as (

    select
        index,
        scorecard_id,
        _fivetran_synced,
        name,
        note,
        rating,
        type

    from source

)

select * from renamed

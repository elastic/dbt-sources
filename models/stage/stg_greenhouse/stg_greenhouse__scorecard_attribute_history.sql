
with source as (

    select * from {{ source('raw_greenhouse', 'scorecard_attribute_history') }}

),

renamed as (

    select
        index,
        scorecard_id,
        _fivetran_synced,
        name,
        note,
        rating,
        type,
        partition_date

    from source

)

select * from renamed

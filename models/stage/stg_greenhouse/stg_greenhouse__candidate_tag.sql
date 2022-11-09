
with source as (

    select * from {{ source('raw_greenhouse', 'candidate_tag') }}

),

renamed as (

    select
        candidate_id,
        tag_id,
        _fivetran_synced

    from source

)

select * from renamed

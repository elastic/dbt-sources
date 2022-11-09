
with source as (

    select * from {{ source('raw_greenhouse', 'attachment') }}

),

renamed as (

    select
        candidate_id,
        index,
        _fivetran_synced,
        filename,
        type,
        url

    from source

)

select * from renamed

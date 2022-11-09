
with source as (

    select * from {{ source('raw_greenhouse', 'address') }}

),

renamed as (

    select
        candidate_id,
        index,
        _fivetran_synced,
        type,
        value

    from source

)

select * from renamed
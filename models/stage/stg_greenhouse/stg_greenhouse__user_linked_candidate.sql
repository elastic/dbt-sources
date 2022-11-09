
with source as (

    select * from {{ source('raw_greenhouse', 'user_linked_candidate') }}

),

renamed as (

    select
        candidate_id,
        user_id,
        _fivetran_synced

    from source

)

select * from renamed

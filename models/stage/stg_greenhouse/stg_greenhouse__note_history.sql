
with source as (

    select * from {{ source('raw_greenhouse', 'note_history') }}

),

renamed as (

    select
        candidate_id,
        id,
        _fivetran_synced,
        body,
        created_at,
        private,
        user_id,
        visibility,
        partition_date

    from source

)

select * from renamed

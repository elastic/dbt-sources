
with source as (

    select * from {{ source('raw_greenhouse', 'candidate_tag_history') }}

),

renamed as (

    select
        candidate_id,
        tag_id,
        _fivetran_synced,
        partition_date

    from source

)

select * from renamed

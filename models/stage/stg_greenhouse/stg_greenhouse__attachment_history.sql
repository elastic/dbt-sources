
with source as (

    select * from {{ source('raw_greenhouse', 'attachment_history') }}

),

renamed as (

    select
        candidate_id,
        index,
        _fivetran_synced,
        filename,
        type,
        url,
        partition_date

    from source

)

select * from renamed

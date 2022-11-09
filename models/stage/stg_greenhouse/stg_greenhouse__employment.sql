
with source as (

    select * from {{ source('raw_greenhouse', 'employment') }}

),

renamed as (

    select
        candidate_id,
        id,
        _fivetran_synced,
        company_name,
        date_end,
        date_start,
        title

    from source

)

select * from renamed


with source as (

    select * from {{ source('raw_greenhouse', 'employment_history') }}

),

renamed as (

    select
        candidate_id,
        id,
        _fivetran_synced,
        company_name,
        date_end,
        date_start,
        title,
        partition_date

    from source

)

select * from renamed

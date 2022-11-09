
with source as (

    select * from {{ source('raw_greenhouse', 'education_history') }}

),

renamed as (

    select
        candidate_id,
        id,
        _fivetran_synced,
        degree,
        discipline,
        end_date,
        school_name,
        start_date,
        partition_date

    from source

)

select * from renamed

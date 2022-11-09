
with source as (

    select * from {{ source('raw_greenhouse', 'job_post') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        content,
        created_at,
        external,
        internal,
        internal_content,
        job_id,
        live,
        location_name,
        title,
        updated_at

    from source

)

select * from renamed

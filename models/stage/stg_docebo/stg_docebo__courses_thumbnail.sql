
with source as (

    select * from {{ source('raw_docebo', 'courses_thumbnail') }}

),

renamed as (

    select
        id_course,
        filename,
        original_filename,
        created_on,
        width,
        name,
        id,
        filesize,
        url,
        height,
        params,
        used_by

    from source

)

select * from renamed


with source as (

    select * from {{ source('raw_strigo', 'class') }}

),

renamed as (

    select
        id,
        name,
        owner,
        description,
        resources,
        presentation_notes,
        presentation_filename,
        created_at,
        updated_at

    from source

)

select * from renamed

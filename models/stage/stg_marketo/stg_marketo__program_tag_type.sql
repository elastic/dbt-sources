
with source as (

    select * from {{ source('raw_marketo', 'program_tag_type') }}

),

renamed as (

    select
        tag_type,
        _fivetran_synced,
        applicable_program_types,
        required

    from source

)

select * from renamed


with source as (

    select * from {{ source('raw_marketo', 'program_tag') }}

),

renamed as (

    select
        program_id,
        tag_type,
        _fivetran_synced,
        tag_value,
        _fivetran_deleted

    from source

)

select * from renamed

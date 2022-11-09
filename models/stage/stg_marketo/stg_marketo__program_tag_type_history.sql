
with source as (

    select * from {{ source('raw_marketo', 'program_tag_type_history') }}

),

renamed as (

    select
        tag_type,
        _fivetran_synced,
        applicable_program_types,
        required,
        partition_date

    from source

)

select * from renamed

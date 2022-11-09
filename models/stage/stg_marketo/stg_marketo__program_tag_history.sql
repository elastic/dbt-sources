
with source as (

    select * from {{ source('raw_marketo', 'program_tag_history') }}

),

renamed as (

    select
        program_id,
        tag_type,
        _fivetran_synced,
        tag_value,
        partition_date

    from source

)

select * from renamed

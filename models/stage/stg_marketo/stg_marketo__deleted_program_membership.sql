
with source as (

    select * from {{ source('raw_marketo', 'deleted_program_membership') }}

),

renamed as (

    select
        id,
        program_id,
        _fivetran_synced

    from source

)

select * from renamed

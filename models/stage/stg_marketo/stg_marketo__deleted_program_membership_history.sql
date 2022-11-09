
with source as (

    select * from {{ source('raw_marketo', 'deleted_program_membership_history') }}

),

renamed as (

    select
        id,
        program_id,
        _fivetran_synced,
        partition_date

    from source

)

select * from renamed


with source as (

    select * from {{ source('raw_marketo', 'program_cost') }}

),

renamed as (

    select
        index,
        program_id,
        _fivetran_synced,
        cost,
        note,
        start_date,
        _fivetran_deleted

    from source

)

select * from renamed

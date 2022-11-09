
with source as (

    select * from {{ source('raw_marketo', 'program_cost_history') }}

),

renamed as (

    select
        index,
        program_id,
        _fivetran_synced,
        cost,
        note,
        start_date,
        partition_date

    from source

)

select * from renamed

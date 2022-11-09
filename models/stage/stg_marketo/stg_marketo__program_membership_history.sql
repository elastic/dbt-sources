
with source as (

    select * from {{ source('raw_marketo', 'program_membership_history') }}

),

renamed as (

    select
        id,
        program_id,
        _fivetran_deleted,
        _fivetran_synced,
        acquired_by,
        is_exhausted,
        membership_date,
        nurture_cadence,
        progression_status,
        reached_success,
        reached_success_date,
        stream,
        partition_date

    from source

)

select * from renamed

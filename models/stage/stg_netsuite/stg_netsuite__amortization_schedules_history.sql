
with source as (

    select * from {{ source('raw_netsuite', 'amortization_schedules_history') }}

),

renamed as (

    select
        amount,
        initial_amount,
        is_template,
        name,
        period_offset,
        residual,
        schedule_id,
        schedule_method,
        schedule_number,
        schedule_type,
        start_offset,
        term_source

    from source

)

select * from renamed


with source as (

    select * from {{ source('raw_netsuite_sa', 'revrecschedules') }}

),

renamed as (

    select
        schedule_id,
        _fivetran_deleted,
        _fivetran_synced,
        amount,
        date_deleted,
        initial_amount,
        is_template,
        name,
        period_offset,
        schedule_method,
        schedule_number,
        schedule_type,
        start_offset,
        term_source

    from source

)

select * from renamed


with source as (

    select * from {{ source('raw_netsuite_sa', 'revrecschedules_history') }}

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
        term_source,
        partition_date

    from source

)

select * from renamed


with source as (

    select * from {{ source('raw_netsuite_sa', 'work_calendar_holidays_history') }}

),

renamed as (

    select
        date_holiday,
        work_calendar_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        description,
        partition_date

    from source

)

select * from renamed

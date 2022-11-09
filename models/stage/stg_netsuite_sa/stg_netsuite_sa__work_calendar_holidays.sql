
with source as (

    select * from {{ source('raw_netsuite_sa', 'work_calendar_holidays') }}

),

renamed as (

    select
        date_holiday,
        work_calendar_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        description

    from source

)

select * from renamed


with source as (

    select * from {{ source('raw_netsuite_sa', 'payment_schedule_days_of_week_map') }}

),

renamed as (

    select
        day_of_week_id,
        payment_schedule_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed

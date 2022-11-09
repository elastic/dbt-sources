
with source as (

    select * from {{ source('raw_netsuite_sa', 'billing_schedule_descriptions') }}

),

renamed as (

    select
        billing_schedule_id,
        _fivetran_deleted,
        _fivetran_synced,
        billing_schedule_type,
        date_deleted,
        frequency,
        name,
        recurrence_count

    from source

)

select * from renamed

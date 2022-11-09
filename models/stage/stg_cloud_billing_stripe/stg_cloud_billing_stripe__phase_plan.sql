
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'phase_plan') }}

),

renamed as (

    select
        end_date,
        plan_id,
        start_date,
        subscription_schedule_id,
        _fivetran_synced,
        quantity

    from source

)

select * from renamed

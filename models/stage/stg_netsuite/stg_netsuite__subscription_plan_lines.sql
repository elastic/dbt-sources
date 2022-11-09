
with source as (

    select * from {{ source('raw_netsuite', 'subscription_plan_lines') }}

),

renamed as (

    select
        billing_mode_id,
        is_prorate_end_date,
        is_prorate_start_date,
        is_required,
        item_id,
        parent_id,
        plan_line_id,
        plan_line_number,
        plan_line_type,
        renewal_option,
        revenue_recognition_option_id,
        usage_multiplier_line_id

    from source

)

select * from renamed

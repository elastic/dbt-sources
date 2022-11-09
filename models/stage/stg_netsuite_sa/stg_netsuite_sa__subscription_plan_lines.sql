
with source as (

    select * from {{ source('raw_netsuite_sa', 'subscription_plan_lines') }}

),

renamed as (

    select
        plan_line_id,
        _fivetran_deleted,
        _fivetran_synced,
        billing_mode_id,
        date_deleted,
        is_prorate_end_date,
        is_prorate_start_date,
        is_required,
        item_id,
        parent_id,
        plan_line_number,
        plan_line_type,
        renewal_option,
        revenue_recognition_option_id,
        usage_multiplier_line_id

    from source

)

select * from renamed

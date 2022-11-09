
with source as (

    select * from {{ source('raw_netsuite_sa', 'billing_subscription_lines_history') }}

),

renamed as (

    select
        subline_id,
        _fivetran_deleted,
        _fivetran_synced,
        billing_mode_id,
        catalog_type,
        date_created,
        date_deleted,
        date_end,
        date_last_modified,
        date_recurrence_start,
        date_start,
        date_termination,
        discount,
        is_discount_percentage,
        is_include_in_renewal,
        is_prorate_end_date,
        is_prorate_start_date,
        item_id,
        line_type,
        period_amount,
        price_interval_group_id,
        purchase_order_id,
        quantity,
        recurring_amount,
        sales_order_id,
        sales_order_line_number,
        status_id,
        subline_extid,
        subline_number,
        subscription_id,
        subscription_plan_line_id,
        usage_multiplier_line_id,
        department_id,
        class_id,
        location_id,
        total,
        partition_date

    from source

)

select * from renamed

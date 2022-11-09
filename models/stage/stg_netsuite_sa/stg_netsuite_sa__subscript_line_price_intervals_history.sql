
with source as (

    select * from {{ source('raw_netsuite_sa', 'subscript_line_price_intervals_history') }}

),

renamed as (

    select
        fivetran_index,
        subscription_line_id,
        _fivetran_deleted,
        _fivetran_synced,
        charge_frequency_id,
        date_deleted,
        date_end_exclusive,
        date_start_inclusive,
        discount,
        included_quantity,
        is_discount_percentage,
        plan_line_id,
        plan_line_number,
        price_plan_id,
        prorate_by,
        quantity,
        repeat_every,
        status_id,
        total_interval_value,
        prorate_by_option,
        partition_date

    from source

)

select * from renamed

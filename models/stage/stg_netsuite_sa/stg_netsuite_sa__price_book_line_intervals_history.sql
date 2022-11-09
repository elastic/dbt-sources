
with source as (

    select * from {{ source('raw_netsuite_sa', 'price_book_line_intervals_history') }}

),

renamed as (

    select
        pbli_id,
        _fivetran_deleted,
        _fivetran_synced,
        charge_frequency_id,
        date_deleted,
        discount,
        is_discount_percentage,
        is_overage_discount_percentage,
        overage_charge_frequency_id,
        overage_discount,
        overage_price_plan_id,
        overage_repeat_every,
        plan_line_id,
        plan_line_number,
        price_book_id,
        price_plan_id,
        prorate_by,
        repeat_every,
        start_offset,
        usage_multiplier_line_id,
        partition_date

    from source

)

select * from renamed

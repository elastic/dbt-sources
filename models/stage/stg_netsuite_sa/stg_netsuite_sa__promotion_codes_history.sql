
with source as (

    select * from {{ source('raw_netsuite_sa', 'promotion_codes_history') }}

),

renamed as (

    select
        promotion_code_id,
        _fivetran_synced,
        apply_customer_criteria,
        apply_discount,
        apply_order_criteria,
        code,
        code_pattern,
        create_tiers,
        date_last_modified,
        descr,
        discount,
        discount_id,
        display_line_discounts,
        end_date,
        include_children,
        json_sublist,
        name,
        plugin_implementation_id,
        set_fixed_price,
        use_type,
        _fivetran_deleted,
        date_deleted,
        partition_date

    from source

)

select * from renamed

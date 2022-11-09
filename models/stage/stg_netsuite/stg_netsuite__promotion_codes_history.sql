
with source as (

    select * from {{ source('raw_netsuite', 'promotion_codes_history') }}

),

renamed as (

    select
        apply_discount,
        code,
        code_pattern,
        date_last_modified,
        descr,
        discount,
        discount_id,
        display_line_discounts,
        end_date,
        name,
        plugin_implementation_id,
        promotion_code_id,
        use_type

    from source

)

select * from renamed


with source as (

    select * from {{ source('raw_netsuite', 'ap_eligible_order_history') }}

),

renamed as (

    select
        ap_eligible_order_extid,
        ap_eligible_order_id,
        date_created,
        description,
        group_0,
        is_inactive,
        label,
        last_modified_date,
        parent_id,
        promotion_code_id,
        saved_search_id,
        type_0

    from source

)

select * from renamed

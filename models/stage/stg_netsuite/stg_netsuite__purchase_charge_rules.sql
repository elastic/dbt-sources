
with source as (

    select * from {{ source('raw_netsuite', 'purchase_charge_rules') }}

),

renamed as (

    select
        cap,
        charge_rule_id,
        charge_rule_type_id,
        charge_stage_id,
        date_created,
        date_last_modified,
        description,
        mark_up_item_id,
        project_id,
        purchase_charge_rule_extid,
        purchase_saved_search_id,
        rate_multiplier,
        rule_name,
        rule_order

    from source

)

select * from renamed


with source as (

    select * from {{ source('raw_netsuite_sa', 'purchase_charge_rules') }}

),

renamed as (

    select
        charge_rule_id,
        _fivetran_deleted,
        _fivetran_synced,
        cap,
        charge_rule_type_id,
        charge_stage_id,
        date_created,
        date_deleted,
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


with source as (

    select * from {{ source('raw_netsuite', 'expense_based_charge_rules') }}

),

renamed as (

    select
        charge_rule_id,
        charge_rule_type,
        charge_stage,
        date_created,
        date_last_modified,
        description,
        expense_amount_multiplier,
        expense_based_charge_rule_id,
        expense_saved_search,
        external_id,
        form_template,
        project_id,
        rule_name,
        rule_order

    from source

)

select * from renamed

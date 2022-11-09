
with source as (

    select * from {{ source('raw_netsuite', 'expense_based_charge_rules_history') }}

),

renamed as (

    select
        charge_rule_id,
        charge_rule_type,
        charge_stage,
        description,
        expense_amount_multiplier,
        expense_based_charge_rule_id,
        expense_saved_search,
        external_id,
        form_template,
        project_id,
        rule_name,
        rule_order,
        date_created,
        date_last_modified

    from source

)

select * from renamed

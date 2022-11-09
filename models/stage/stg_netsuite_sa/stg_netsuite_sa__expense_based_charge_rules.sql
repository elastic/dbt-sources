
with source as (

    select * from {{ source('raw_netsuite_sa', 'expense_based_charge_rules') }}

),

renamed as (

    select
        expense_based_charge_rule_id,
        fivetran_index,
        _fivetran_deleted,
        _fivetran_synced,
        charge_rule_id,
        charge_rule_type,
        charge_stage,
        date_created,
        date_deleted,
        date_last_modified,
        description,
        expense_amount_multiplier,
        expense_saved_search,
        external_id,
        form_template,
        project_id,
        rule_name,
        rule_order

    from source

)

select * from renamed

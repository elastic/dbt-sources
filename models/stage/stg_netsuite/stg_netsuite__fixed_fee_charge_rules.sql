
with source as (

    select * from {{ source('raw_netsuite', 'fixed_fee_charge_rules') }}

),

renamed as (

    select
        amount,
        billing_item,
        charge_rule_id,
        charge_rule_type,
        charge_stage,
        date_created,
        date_last_modified,
        description,
        end_date,
        external_id,
        fixed_fee_charge_rule_id,
        form_template,
        frequency,
        period,
        project_id,
        project_task,
        rule_name,
        start_date

    from source

)

select * from renamed

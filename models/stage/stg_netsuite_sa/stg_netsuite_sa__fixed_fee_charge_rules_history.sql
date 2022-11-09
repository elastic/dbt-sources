
with source as (

    select * from {{ source('raw_netsuite_sa', 'fixed_fee_charge_rules_history') }}

),

renamed as (

    select
        fivetran_index,
        fixed_fee_charge_rule_id,
        _fivetran_deleted,
        _fivetran_synced,
        amount,
        billing_item,
        charge_rule_id,
        charge_rule_type,
        charge_stage,
        date_created,
        date_deleted,
        date_last_modified,
        description,
        end_date,
        external_id,
        form_template,
        frequency,
        period,
        project_id,
        project_task,
        rule_name,
        start_date,
        partition_date

    from source

)

select * from renamed

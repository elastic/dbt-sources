
with source as (

    select * from {{ source('raw_netsuite_sa', 'time_based_charge_rules') }}

),

renamed as (

    select
        fivetran_index,
        time_based_charge_rule_id,
        _fivetran_deleted,
        _fivetran_synced,
        adjust_time_to_fit_under_cap,
        billing_rate_card_id,
        cap_hours,
        cap_money,
        cap_type,
        charge_rule_id,
        charge_rule_type,
        charge_stage,
        date_created,
        date_deleted,
        date_last_modified,
        description,
        dont_bill_entry_exceeding_cap,
        end_date,
        external_id,
        form_template,
        project_id,
        rate_multiplier,
        rate_source,
        rounding,
        rule_name,
        rule_order,
        sale_unit_id,
        saved_search,
        start_date,
        units_type_id

    from source

)

select * from renamed


with source as (

    select * from {{ source('raw_salesforce', 'lean_data_abm_reassign_rule_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp,
        lean_data_criterias_c,
        lean_data_is_filter_rule_c,
        lean_data_reassign_owner_c,
        lean_data_rule_logic_c,
        lean_data_rule_type_c,
        lean_data_scenario_number_c,
        lean_data_sort_order_c

    from source

)

select * from renamed

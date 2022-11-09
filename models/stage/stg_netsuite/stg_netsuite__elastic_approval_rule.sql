
with source as (

    select * from {{ source('raw_netsuite', 'elastic_approval_rule') }}

),

renamed as (

    select
        currency_min,
        date_created,
        dynamic_search_id,
        elastic_approval_group_pare_id,
        elastic_approval_rule_extid,
        elastic_approval_rule_id,
        elastic_approval_rule_name,
        employee_id,
        employee_manager,
        is_inactive,
        last_modified_date,
        parent_id,
        role_id,
        rule_type_id,
        sequence_0

    from source

)

select * from renamed

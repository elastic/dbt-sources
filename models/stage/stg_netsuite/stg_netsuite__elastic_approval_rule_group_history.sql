
with source as (

    select * from {{ source('raw_netsuite', 'elastic_approval_rule_group_history') }}

),

renamed as (

    select
        custom_record_type_id,
        date_created,
        description,
        elastic_approval_rule_group_ex,
        elastic_approval_rule_group_id,
        elastic_approval_rule_group_na,
        entity_type_id,
        is_inactive,
        last_modified_date,
        parent_id,
        transaction_type_id,
        disable_email

    from source

)

select * from renamed


with source as (

    select * from {{ source('raw_netsuite_sa', 'elastic_approval_rule_group_history') }}

),

renamed as (

    select
        elastic_approval_rule_group_id,
        _fivetran_deleted,
        _fivetran_synced,
        custom_record_type_id,
        date_created,
        date_deleted,
        description,
        disable_email,
        elastic_approval_rule_group_ex,
        elastic_approval_rule_group_na,
        entity_type_id,
        is_inactive,
        last_modified_date,
        parent_id,
        transaction_type_id,
        partition_date

    from source

)

select * from renamed

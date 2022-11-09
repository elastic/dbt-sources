
with source as (

    select * from {{ source('raw_salesforce', 'matching_rule') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        boolean_filter,
        created_by_id,
        created_date,
        description,
        developer_name,
        is_deleted,
        language,
        last_modified_by_id,
        last_modified_date,
        master_label,
        match_engine,
        namespace_prefix,
        rule_status,
        sobject_subtype,
        sobject_type,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed

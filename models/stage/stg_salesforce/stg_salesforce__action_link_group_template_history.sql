
with source as (

    select * from {{ source('raw_salesforce', 'action_link_group_template_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        category,
        created_by_id,
        created_date,
        developer_name,
        executions_allowed,
        hours_until_expiration,
        id,
        is_deleted,
        is_published,
        language,
        last_modified_by_id,
        last_modified_date,
        master_label,
        namespace_prefix,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed

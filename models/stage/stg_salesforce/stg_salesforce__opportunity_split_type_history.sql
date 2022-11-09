
with source as (

    select * from {{ source('raw_salesforce', 'opportunity_split_type_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        description,
        developer_name,
        is_active,
        is_deleted,
        is_total_validated,
        language,
        last_modified_by_id,
        last_modified_date,
        master_label,
        namespace_prefix,
        split_data_status,
        split_entity,
        split_field,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed


with source as (

    select * from {{ source('raw_salesforce', 'object_territory_2_assignment_rule_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        boolean_filter,
        created_by_id,
        created_date,
        developer_name,
        is_active,
        is_deleted,
        language,
        last_modified_by_id,
        last_modified_date,
        master_label,
        object_type,
        system_modstamp,
        territory_2_model_id,
        _fivetran_deleted

    from source

)

select * from renamed

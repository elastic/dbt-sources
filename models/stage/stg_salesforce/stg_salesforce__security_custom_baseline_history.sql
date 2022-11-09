
with source as (

    select * from {{ source('raw_salesforce', 'security_custom_baseline_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        baseline,
        created_by_id,
        created_date,
        developer_name,
        id,
        is_default,
        is_deleted,
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

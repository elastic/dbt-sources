
with source as (

    select * from {{ source('raw_salesforce', 'duplicate_job_definition') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        developer_name,
        is_deleted,
        language,
        last_modified_by_id,
        last_modified_date,
        master_label,
        sobject_subtype,
        sobject_type,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed

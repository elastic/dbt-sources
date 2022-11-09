
with source as (

    select * from {{ source('raw_salesforce', 'branding_set_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        description,
        developer_name,
        id,
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

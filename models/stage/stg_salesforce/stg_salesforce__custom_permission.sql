
with source as (

    select * from {{ source('raw_salesforce', 'custom_permission') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        description,
        developer_name,
        is_deleted,
        is_protected,
        language,
        last_modified_by_id,
        last_modified_date,
        master_label,
        namespace_prefix,
        system_modstamp,
        _fivetran_deleted,
        is_licensed

    from source

)

select * from renamed

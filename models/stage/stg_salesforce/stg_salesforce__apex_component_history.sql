
with source as (

    select * from {{ source('raw_salesforce', 'apex_component_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_deleted,
        _fivetran_synced,
        api_version,
        controller_key,
        controller_type,
        created_by_id,
        created_date,
        description,
        last_modified_by_id,
        last_modified_date,
        markup,
        master_label,
        name,
        namespace_prefix,
        system_modstamp

    from source

)

select * from renamed

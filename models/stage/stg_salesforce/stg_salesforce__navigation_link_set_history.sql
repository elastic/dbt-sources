
with source as (

    select * from {{ source('raw_salesforce', 'navigation_link_set_history') }}

),

renamed as (

    select
        partitiontime,
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
        network_id,
        system_modstamp,
        _fivetran_deleted,
        namespace_prefix

    from source

)

select * from renamed

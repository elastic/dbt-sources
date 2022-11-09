
with source as (

    select * from {{ source('raw_salesforce', 'network_page_override_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        network_id,
        override_setting,
        override_type,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed

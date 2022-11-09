
with source as (

    select * from {{ source('raw_salesforce', 'granted_by_license_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        custom_permission_id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        permission_set_license_id,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed

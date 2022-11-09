
with source as (

    select * from {{ source('raw_salesforce', 'custom_permission_dependency') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        custom_permission_id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        required_custom_permission_id,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed

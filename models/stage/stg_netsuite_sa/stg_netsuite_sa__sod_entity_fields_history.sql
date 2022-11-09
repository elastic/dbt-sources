
with source as (

    select * from {{ source('raw_netsuite_sa', 'sod_entity_fields_history') }}

),

renamed as (

    select
        sod_entity_fields_id,
        _fivetran_deleted,
        _fivetran_synced,
        current_access,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        permissions,
        sod_approval_request_for_new_,
        sod_employee_processing_sta_id,
        sod_entity_fields_employee_id,
        sod_entity_fields_extid,
        sod_entity_fields_name,
        sod_status,
        partition_date

    from source

)

select * from renamed

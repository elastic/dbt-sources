
with source as (

    select * from {{ source('raw_salesforce', 'pending_service_routing_interaction_info') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        is_focused,
        last_modified_by_id,
        last_modified_date,
        name,
        pending_service_routing_id,
        primary_record_id,
        system_modstamp,
        target_object_id

    from source

)

select * from renamed

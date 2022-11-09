
with source as (

    select * from {{ source('raw_salesforce', 'project_sync_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        country_c,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        location_values_c,
        name,
        owner_id,
        practice_c,
        project_manager_c,
        region_c,
        state_c,
        system_modstamp,
        type_c,
        services_delivery_manager_c

    from source

)

select * from renamed

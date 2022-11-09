
with source as (

    select * from {{ source('raw_salesforce', 'pdri_deployment_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp,
        pdri_deployment_name_c,
        pdri_deployment_notes_c,
        pdri_destination_connection_c,
        pdri_destination_managed_instance_id_c,
        pdri_source_connection_c,
        pdri_source_managed_instance_id_c

    from source

)

select * from renamed

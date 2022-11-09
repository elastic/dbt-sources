
with source as (

    select * from {{ source('raw_salesforce', 'ironclad_ironclad_workflow_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ironclad_workflow_id_c,
        ironclad_workflow_link_c,
        ironclad_workflow_name_c,
        ironclad_workflow_status_c,
        ironclad_workflow_type_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed


with source as (

    select * from {{ source('raw_salesforce', 'ironclad_ironclad_approval_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ironclad_approval_name_c,
        ironclad_approval_role_c,
        ironclad_approval_status_c,
        ironclad_ironclad_workflow_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed

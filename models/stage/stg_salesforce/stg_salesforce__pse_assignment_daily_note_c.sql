
with source as (

    select * from {{ source('raw_salesforce', 'pse_assignment_daily_note_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        pse_assignment_c,
        pse_date_c,
        pse_note_c,
        system_modstamp,
        pse_last_modified_by_username_c,
        pse_project_c,
        pse_resource_c

    from source

)

select * from renamed


with source as (

    select * from {{ source('raw_salesforce', 'pse_team_schedule_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        pse_effective_date_c,
        pse_notes_c,
        pse_send_schedule_c,
        pse_status_c,
        pse_team_c,
        pse_team_schedule_template_c,
        system_modstamp

    from source

)

select * from renamed

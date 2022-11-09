
with source as (

    select * from {{ source('raw_salesforce', 'pse_team_membership_c') }}

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
        pse_team_c,
        pse_team_member_c,
        pse_team_member_initials_c,
        pse_team_scheduler_permission_c,
        system_modstamp

    from source

)

select * from renamed

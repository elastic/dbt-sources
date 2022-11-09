
with source as (

    select * from {{ source('raw_salesforce', 'pse_team_schedule_template_c_history') }}

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
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        pse_date_last_used_c,
        pse_is_default_c,
        pse_team_c,
        system_modstamp

    from source

)

select * from renamed


with source as (

    select * from {{ source('raw_salesforce', 'fstr_pce_team_member_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fstr_client_c,
        fstr_team_member_c,
        fstr_team_role_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed


with source as (

    select * from {{ source('raw_salesforce', 'opportunity_team_member_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        opportunity_access_level,
        opportunity_id,
        photo_url,
        stage_added_c,
        system_modstamp,
        team_member_role,
        title,
        user_id,
        team_member_create_date_c

    from source

)

select * from renamed


with source as (

    select * from {{ source('raw_salesforce', 'account_team_member') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        account_access_level,
        account_id,
        case_access_level,
        contact_access_level,
        created_by_id,
        created_date,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        opportunity_access_level,
        photo_url,
        system_modstamp,
        team_member_role,
        title,
        user_id,
        currency_iso_code

    from source

)

select * from renamed


with source as (

    select * from {{ source('raw_salesforce', 'subscription_team_member_c') }}

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
        name,
        owner_id,
        role_c,
        subscription_c,
        system_modstamp,
        user_c,
        user_subscription_role_unique_key_c

    from source

)

select * from renamed

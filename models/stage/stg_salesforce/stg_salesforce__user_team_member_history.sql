
with source as (

    select * from {{ source('raw_salesforce', 'user_team_member_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_deleted,
        _fivetran_synced,
        created_by_id,
        created_date,
        last_modified_by_id,
        last_modified_date,
        opportunity_access_level,
        owner_id,
        system_modstamp,
        team_member_role,
        user_id

    from source

)

select * from renamed

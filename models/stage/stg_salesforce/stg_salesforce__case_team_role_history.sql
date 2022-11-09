
with source as (

    select * from {{ source('raw_salesforce', 'case_team_role_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_deleted,
        _fivetran_synced,
        access_level,
        created_by_id,
        created_date,
        last_modified_by_id,
        last_modified_date,
        name,
        preferences_visible_in_csp,
        system_modstamp

    from source

)

select * from renamed

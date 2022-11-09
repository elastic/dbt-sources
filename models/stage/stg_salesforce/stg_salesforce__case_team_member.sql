
with source as (

    select * from {{ source('raw_salesforce', 'case_team_member') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        created_by_id,
        created_date,
        last_modified_by_id,
        last_modified_date,
        member_id,
        parent_id,
        system_modstamp,
        team_role_id,
        team_template_member_id,
        team_template_id

    from source

)

select * from renamed

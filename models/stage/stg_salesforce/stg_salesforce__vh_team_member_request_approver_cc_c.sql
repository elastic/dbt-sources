
with source as (

    select * from {{ source('raw_salesforce', 'vh_team_member_request_approver_cc_c') }}

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
        system_modstamp,
        vh_team_member_request_approvers_c,
        vh_user_c

    from source

)

select * from renamed
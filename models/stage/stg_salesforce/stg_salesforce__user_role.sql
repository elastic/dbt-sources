
with source as (

    select * from {{ source('raw_salesforce', 'user_role') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        case_access_for_account_owner,
        contact_access_for_account_owner,
        developer_name,
        forecast_user_id,
        last_modified_by_id,
        last_modified_date,
        may_forecast_manager_share,
        name,
        opportunity_access_for_account_owner,
        parent_role_id,
        portal_account_id,
        portal_account_owner_id,
        portal_role,
        portal_type,
        rollup_description,
        system_modstamp

    from source

)

select * from renamed

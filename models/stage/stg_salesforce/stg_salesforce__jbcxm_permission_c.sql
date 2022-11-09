
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_permission_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        jbcxm_dashboard_c,
        jbcxm_permissionset_c,
        jbcxm_survey_c,
        jbcxm_uiview_c,
        jbcxm_user_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed

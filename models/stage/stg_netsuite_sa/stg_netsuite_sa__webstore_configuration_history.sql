
with source as (

    select * from {{ source('raw_netsuite_sa', 'webstore_configuration_history') }}

),

renamed as (

    select
        webstore_configuration_id,
        _fivetran_deleted,
        _fivetran_synced,
        credit_card_suitelet,
        currency_suitelet,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        lms_enrollments_link,
        lms_okta_chiclet_link,
        lms_url,
        login_url,
        okta_authorization_key,
        okta_check_account_link,
        okta_group_id,
        okta_url,
        parent_id,
        sca_chiclet_link,
        website_shopping_url,
        webstore_configuration_extid,
        webstore_configuration_name,
        avalara_auth,
        avalara_end_point_url,
        partition_date

    from source

)

select * from renamed

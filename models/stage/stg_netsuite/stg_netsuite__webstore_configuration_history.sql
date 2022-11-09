
with source as (

    select * from {{ source('raw_netsuite', 'webstore_configuration_history') }}

),

renamed as (

    select
        credit_card_suitelet,
        currency_suitelet,
        date_created,
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
        webstore_configuration_extid,
        webstore_configuration_id,
        webstore_configuration_name,
        website_shopping_url

    from source

)

select * from renamed

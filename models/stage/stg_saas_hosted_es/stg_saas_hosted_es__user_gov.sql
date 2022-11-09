
with source as (

    select * from {{ source('raw_saas_hosted_es', 'user_gov') }}

),

renamed as (

    select
        ece_name,
        user_create_date,
        user_is_elastic_internal,
        user_is_primary,
        user_marketing_campaign,
        user_marketing_source,
        user_org_conversion_date,
        user_org_date_added,
        user_org_date_invited,
        user_org_role,
        user_org_uuid,
        user_source,
        user_trial_start_date,
        user_uuid,
        user_email_domain,
        user_registration_source

    from source

)

select * from renamed

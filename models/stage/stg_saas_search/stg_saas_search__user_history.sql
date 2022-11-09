
with source as (

    select * from {{ source('raw_saas_search', 'user_history') }}

),

renamed as (

    select
        admin_url__c,
        belongs_to_single_account_as_owner__c,
        email_confirmed_at__c,
        email_domain__c,
        has_always_been_free_user__c,
        invited__c,
        last_login_date__c,
        signed_up_date__c,
        swiftype_firstname__c,
        swiftype_lastname__c,
        swiftype_phone__c,
        swiftype_phone_number_valid__c,
        swiftype_email__c,
        swiftype_non_anonymous_email__c,
        swiftype_owned_account_id__c,
        swiftype_owned_account_plan_name__c,
        swiftype_platform__c,
        swiftype_leadsource__c,
        swiftype_title__c,
        swiftype_user_id__c,
        total_engines__c,
        total_wordpress_engines__c,
        total_crawler_engines__c,
        total_api_engines__c,
        total_tumblr_engines__c,
        total_engines_in_production__c,
        total_engines_in_development_or_prod__c,
        site_search_user__c,
        id,
        email,
        name,
        ip_address,
        account_ids,
        partition_date

    from source

)

select * from renamed

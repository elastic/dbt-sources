
with source as (

    select * from {{ source('raw_saas_search', 'account') }}

),

renamed as (

    select
        admin_url__c,
        at_risk__c,
        billing_interval__c,
        billing_method__c,
        churned_date__c,
        churn_amount__c,
        customer_success_eligible_date__c,
        email_domain__c,
        engine_types__c,
        hostnames__c,
        implemented_date__c,
        last_login_date__c,
        plan_limits_exceeded__c,
        plan_name__c,
        plan_price_per_month__c,
        plan_price_per_month_at_month__c,
        plan_price_per_month_at_quarter__c,
        plan_subscription_history__c,
        shopify_shop_name__c,
        signed_up_date__c,
        swiftype_account_id__c,
        swiftype_account_owner_id__c,
        swiftype_account_name__c,
        swiftype_email__c,
        swiftype_phone__c,
        total_documents__c,
        total_engines__c,
        total_engines_currently_in_development__c,
        total_engines_currently_in_production__c,
        total_ft_queries_last_full_month__c,
        total_queries_last_full_month__c,
        total_activity_last_full_month__c,
        total_ac_queries_last_full_month__c,
        monthly_query_limit__c,
        id,
        email,
        name,
        ip_address,
        has_ever_paid,
        active_free_trial,
        subscription,
        commitment_period,
        currency,
        last_sync_at,
        company,
        domain,
        business,
        employees_number,
        address1,
        address2,
        city,
        state,
        postal_code,
        country

    from source

)

select * from renamed

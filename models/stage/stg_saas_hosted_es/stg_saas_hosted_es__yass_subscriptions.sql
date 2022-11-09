
with source as (

    select * from {{ source('raw_saas_hosted_es', 'yass_subscriptions') }}

),

renamed as (

    select
        _,
        processing_order,
        unique_identifier,
        customer_name,
        sfdc_oppty,
        sfdc_of,
        sfdc_sales_order_line_id,
        is_add_on_,
        contract_start_date,
        contract_end_date,
        term,
        active_year,
        sales_channel,
        subscription_tier,
        gross_credits__ecus_,
        prepaid_amount__foreign_cur__,
        acv__usd_,
        conversion_rate__fx__usd_,
        currency,
        discount_,
        ecu___currency_checksum,
        cloud_user_id,
        org_ids,
        statuses,
        csm,
        account_manager,
        specific_mp_account_offer_data,
        price_as_of,
        contract_ver,
        special_terms,
        normalziedname,
        no,
        org_id,
        from_date,
        to_date,
        status,
        billing_run_comments,
        contract_daily_spend,
        owner,
        sheet_format,
        migration_group,
        migration_group_reason,
        migration_status,
        line_represents_multiple_sales_order_line_ids_,
        is_ad_hoc_credit_starting_balance_correction_applicable_to_next_run_,
        is_happy_path____manual_import_range_process_still_

    from source

)

select * from renamed

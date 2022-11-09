
with source as (

    select * from {{ source('raw_salesforce', 'quote_order_form_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        bundling_cloud_consulting_c,
        bundling_cloud_consulting_discount_c,
        bundling_cloud_training_c,
        bundling_cloud_training_discount_c,
        bundling_consulting_training_c,
        bundling_consulting_training_discount_c,
        bundling_sub_consulting_c,
        bundling_sub_consulting_discount_c,
        bundling_sub_training_c,
        bundling_sub_training_discount_c,
        cloud_annual_discount_order_form_c,
        cloud_annual_order_form_c,
        cloud_discount_order_form_c,
        cloud_standard_order_form_c,
        conga_url_c,
        consulting_reseller_order_form_c,
        created_by_id,
        created_date,
        currency_iso_code,
        development_discount_order_form_c,
        development_standard_order_form_c,
        discount_startup_order_form_c,
        federal_reseller_order_form_c,
        found_reseller_order_form_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        private_training_discount_order_form_c,
        private_training_order_form_c,
        services_discount_order_form_c,
        services_standard_order_form_c,
        setup_owner_id,
        standard_default_order_form_c,
        standard_discount_order_form_c,
        standard_reseller_order_form_c,
        standard_startup_order_form_c,
        system_modstamp,
        templete_group_id_c

    from source

)

select * from renamed

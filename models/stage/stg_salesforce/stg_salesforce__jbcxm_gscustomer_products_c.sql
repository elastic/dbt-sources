
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_gscustomer_products_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        jbcxm_account_c,
        jbcxm_asv_c,
        jbcxm_comments_c,
        jbcxm_customer_info_c,
        jbcxm_enabled_c,
        jbcxm_gsproduct_c,
        jbcxm_licensed_c,
        jbcxm_mrr_c,
        jbcxm_one_time_c,
        jbcxm_users_c,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed

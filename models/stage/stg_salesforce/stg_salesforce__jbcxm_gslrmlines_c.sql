
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_gslrmlines_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        jbcxm_asv_c,
        jbcxm_booking_date_c,
        jbcxm_external_source_id_c,
        jbcxm_header_source_id_c,
        jbcxm_lrmheader_c,
        jbcxm_mrr_c,
        jbcxm_one_time_c,
        jbcxm_product_c,
        jbcxm_renewal_date_c,
        jbcxm_subscription_end_date_c,
        jbcxm_subscription_start_date_c,
        jbcxm_term_c,
        jbcxm_users_c,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed


with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_customer_features_c') }}

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
        jbcxm_comment_c,
        jbcxm_enabled_c,
        jbcxm_features_c,
        jbcxm_licensed_c,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed

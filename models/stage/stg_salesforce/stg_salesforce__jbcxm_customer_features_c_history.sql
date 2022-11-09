
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_customer_features_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
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

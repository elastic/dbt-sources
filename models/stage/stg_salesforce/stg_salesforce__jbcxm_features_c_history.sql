
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_features_c_history') }}

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
        jbcxm_feature_c,
        jbcxm_product_c,
        jbcxm_system_name_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed

with source as (

    select * from {{ source('raw_salesforce', 'sbqq_subscribed_asset_c_history') }}

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
        last_modified_by_id,
        last_modified_date,
        name,
        sbqq_active_c,
        sbqq_asset_c,
        sbqq_contract_id_c,
        sbqq_subscription_c,
        sbqq_usage_end_date_c,
        system_modstamp,
        sbqq_asset_root_id_c

    from source

)

select * from renamed

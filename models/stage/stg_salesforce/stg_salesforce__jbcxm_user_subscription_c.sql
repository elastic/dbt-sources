
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_user_subscription_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        jbcxm_account_id_c,
        jbcxm_subscribe_c,
        jbcxm_user_id_c,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed

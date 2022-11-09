
with source as (

    select * from {{ source('raw_salesforce', 'learndot_learndot_training_credit_account_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        learndot_balance_c,
        learndot_id_c,
        learndot_learndot_created_c,
        name,
        owner_id,
        system_modstamp,
        learndot_custom_field_01_c,
        learndot_custom_field_02_c,
        learndot_custom_field_03_c,
        learndot_custom_field_04_c,
        learndot_custom_field_05_c,
        learndot_custom_field_06_c,
        learndot_custom_field_07_c,
        learndot_custom_field_08_c,
        learndot_custom_field_09_c,
        learndot_custom_field_10_c

    from source

)

select * from renamed

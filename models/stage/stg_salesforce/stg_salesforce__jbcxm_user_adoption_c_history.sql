
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_user_adoption_c_history') }}

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
        jbcxm_date_c,
        jbcxm_measure_id_c,
        jbcxm_measure_value_c,
        jbcxm_month_c,
        jbcxm_opportunity_c,
        jbcxm_period_01_c,
        jbcxm_period_02_c,
        jbcxm_period_03_c,
        jbcxm_period_04_c,
        jbcxm_period_05_c,
        jbcxm_period_06_c,
        jbcxm_period_07_c,
        jbcxm_period_08_c,
        jbcxm_period_09_c,
        jbcxm_period_10_c,
        jbcxm_period_11_c,
        jbcxm_period_12_c,
        jbcxm_year_c,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed

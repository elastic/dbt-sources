
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_survey_master_c_history') }}

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
        jbcxm_account_level_aggregation_c,
        jbcxm_customer_distribution_count_c,
        jbcxm_default_c,
        jbcxm_end_date_c,
        jbcxm_entity_type_c,
        jbcxm_publish_date_c,
        jbcxm_relationship_type_c,
        jbcxm_start_date_c,
        jbcxm_survey_id_c,
        jbcxm_survey_name_c,
        jbcxm_survey_type_c,
        jbcxm_user_distribution_count_c,
        jbcxm_user_level_aggregation_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed


with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_gsnpstext_analytics_c_history') }}

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
        jbcxm_aspect_c,
        jbcxm_aspect_group_c,
        jbcxm_npssurvey_response_c,
        jbcxm_run_date_c,
        jbcxm_sentence_c,
        jbcxm_sentence_category_c,
        jbcxm_sentence_id_c,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed

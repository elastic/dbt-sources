
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_gsrelationship_c_history') }}

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
        jbcxm_gsaverage_npsbucket_c,
        jbcxm_gscomments_c,
        jbcxm_gscsm_c,
        jbcxm_gscsmmodel_c,
        jbcxm_gslatest_npsscore_c,
        jbcxm_relationship_type_c,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed

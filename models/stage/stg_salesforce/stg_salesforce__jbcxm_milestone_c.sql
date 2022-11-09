
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_milestone_c') }}

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
        jbcxm_created_date_c,
        jbcxm_customer_c,
        jbcxm_date_c,
        jbcxm_is_relationship_c,
        jbcxm_milestone_c,
        jbcxm_opportunity_c,
        jbcxm_relationship_c,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed

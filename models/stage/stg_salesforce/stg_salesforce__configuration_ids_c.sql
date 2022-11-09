
with source as (

    select * from {{ source('raw_salesforce', 'configuration_ids_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ebs_integration_user_c,
        elastic_crm_id_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        marvel_user_c,
        monthly_cloud_standard_c,
        name,
        new_business_opp_record_type_c,
        public_training_user_c,
        quote_draft_record_type_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed

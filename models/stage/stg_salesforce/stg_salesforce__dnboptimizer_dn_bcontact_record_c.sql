
with source as (

    select * from {{ source('raw_salesforce', 'dnboptimizer_dn_bcontact_record_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        dnboptimizer_business_name_c,
        dnboptimizer_city_c,
        dnboptimizer_contact_id_c,
        dnboptimizer_contact_phone_c,
        dnboptimizer_country_code_c,
        dnboptimizer_dunsnumber_c,
        dnboptimizer_email_c,
        dnboptimizer_email_deliverability_c,
        dnboptimizer_email_deliverability_score_c,
        dnboptimizer_first_name_c,
        dnboptimizer_inactive_c,
        dnboptimizer_job_title_c,
        dnboptimizer_last_name_c,
        dnboptimizer_middle_name_c,
        dnboptimizer_name_prefix_c,
        dnboptimizer_name_suffix_c,
        dnboptimizer_phone_accuracy_c,
        dnboptimizer_phone_accuracy_score_c,
        dnboptimizer_postal_code_c,
        dnboptimizer_sic_4_code_1_c,
        dnboptimizer_sic_4_desc_1_c,
        dnboptimizer_state_province_abbrev_c,
        dnboptimizer_state_province_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed

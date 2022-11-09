
with source as (

    select * from {{ source('raw_netsuite_sa', 'vendor_questionnaire') }}

),

renamed as (

    select
        vendor_questionnaire_id,
        _fivetran_deleted,
        _fivetran_synced,
        accreditation_body,
        accreditation_certificate_exp,
        assesses_the_environmental__id,
        date_created,
        date_deleted,
        do_you_have_a_formally_regi_id,
        do_you_have_a_sustainabilit_id,
        do_you_have_your_own_compan_id,
        federal_government_cert_exp_d,
        has_a_written_environmental_id,
        has_environmental_objective_id,
        have_you_read_the_elastic_v_id,
        is_inactive,
        it_takes_environmental_issu_id,
        last_modified_date,
        local_government_cert_exp_dat,
        monitors_energy_use_and_has_id,
        monitors_water_use_and_has__id,
        national_gay__lesbian_chamber,
        national_minority_supplier_de,
        other_business_designation_,
        other_certification_agency,
        other_certification_agency_ce,
        parent_id,
        recycles_wherever_possible_id,
        state_government_cert_exp_dat,
        vendor_id,
        vendor_questionnaire_extid,
        womens_business_enterprise_na

    from source

)

select * from renamed

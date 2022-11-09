
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_associated_record_c_history') }}

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
        jbcxm_aoparticipant_id_c,
        jbcxm_contact_c,
        jbcxm_cstask_c,
        jbcxm_cta_c,
        jbcxm_outreach_id_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed

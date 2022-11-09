
with source as (

    select * from {{ source('raw_salesforce', 'fcrm_fcr_lead_convert_item_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fcrm_change_flags_c,
        fcrm_converted_contact_id_c,
        fcrm_converted_opportunity_id_c,
        fcrm_deferred_op_type_c,
        fcrm_last_contact_merge_processed_c,
        fcrm_last_lead_merge_processed_c,
        fcrm_lead_id_c,
        fcrm_lead_is_passive_c,
        fcrm_prior_status_c,
        fcrm_response_idto_sync_c,
        fcrm_status_c,
        fcrm_status_change_type_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed

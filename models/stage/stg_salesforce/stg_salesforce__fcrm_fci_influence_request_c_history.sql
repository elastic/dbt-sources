
with source as (

    select * from {{ source('raw_salesforce', 'fcrm_fci_influence_request_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fcrm_account_c,
        fcrm_params_2_c,
        fcrm_params_c,
        fcrm_test_record_c,
        fcrm_type_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed

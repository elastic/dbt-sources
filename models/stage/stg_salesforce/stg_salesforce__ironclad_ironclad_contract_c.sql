
with source as (

    select * from {{ source('raw_salesforce', 'ironclad_ironclad_contract_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ironclad_account_c,
        ironclad_agreement_date_c,
        ironclad_contract_type_c,
        ironclad_counterparty_signed_id_c,
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

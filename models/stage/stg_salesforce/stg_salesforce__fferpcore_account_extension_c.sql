
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_account_extension_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_account_c,
        fferpcore_tax_exemption_reason_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        system_modstamp,
        fferpcore_einvoicing_do_not_auto_send_c,
        fferpcore_einvoicing_address_identifier_c,
        fferpcore_einvoicing_scheme_id_c

    from source

)

select * from renamed

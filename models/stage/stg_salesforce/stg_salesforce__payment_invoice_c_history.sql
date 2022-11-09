
with source as (

    select * from {{ source('raw_salesforce', 'payment_invoice_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        invoice_c,
        invoice_internal_id_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        payment_c,
        system_modstamp

    from source

)

select * from renamed

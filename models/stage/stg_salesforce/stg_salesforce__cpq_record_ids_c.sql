
with source as (

    select * from {{ source('raw_salesforce', 'cpq_record_ids_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        price_book_id_c,
        quote_process_id_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed

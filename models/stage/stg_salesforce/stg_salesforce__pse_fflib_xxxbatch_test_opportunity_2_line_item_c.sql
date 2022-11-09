
with source as (

    select * from {{ source('raw_salesforce', 'pse_fflib_xxxbatch_test_opportunity_2_line_item_c') }}

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
        pse_description_c,
        pse_pricebook_entry_id_c,
        pse_quantity_c,
        pse_unit_price_c,
        pse_xxxbatch_test_opportunity_2_c,
        system_modstamp

    from source

)

select * from renamed

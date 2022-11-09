
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_opportunity_line_item_mirror_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        end_date_c,
        ffrr_description_c,
        ffrr_discount_c,
        ffrr_ffrftemplate_c,
        ffrr_ffrrtemplate_c,
        ffrr_list_price_c,
        ffrr_opportunity_id_c,
        ffrr_original_oplitem_id_c,
        ffrr_product_2_c,
        ffrr_product_code_c,
        ffrr_quantity_c,
        ffrr_service_date_c,
        ffrr_subtotal_c,
        ffrr_total_price_c,
        ffrr_unit_price_c,
        forecast_c,
        forecast_complete_c,
        forecasted_to_date_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp,
        start_date_c

    from source

)

select * from renamed

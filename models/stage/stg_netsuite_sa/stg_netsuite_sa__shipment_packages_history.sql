
with source as (

    select * from {{ source('raw_netsuite_sa', 'shipment_packages_history') }}

),

renamed as (

    select
        _fivetran_id,
        _fivetran_id2,
        _fivetran_deleted,
        _fivetran_synced,
        admissibility_package_type,
        alcohol_recipient_type,
        authorization_number,
        carrier_packaging,
        cash_on_delivery_amount,
        cash_on_delivery_method,
        cod_other_charge,
        contents_description,
        date_deleted,
        declared_value,
        delivery_confirmation,
        dimension_unit,
        dry_ice_weight,
        freight_charge_added_to_cod,
        has_additional_handling,
        has_cash_on_delivery,
        has_declared_value,
        has_insured_value,
        insured_value,
        is_alcohol,
        is_non_hazardous_li_batteries,
        is_non_standard_container,
        item_fulfillment_id,
        package_height,
        package_length,
        package_width,
        priority_alert_content,
        priority_alert_type,
        reference_one,
        reference_two,
        signature_option,
        signature_release,
        tracking_number,
        weight_in_lbs,
        your_packaging,
        partition_date

    from source

)

select * from renamed


with source as (

    select * from {{ source('raw_salesforce', 'opportunity_clone_settings_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        async_delay_in_mins_c,
        closed_date_c,
        created_by_id,
        created_date,
        currency_iso_code,
        dev_to_gold_default_sku_c,
        dev_to_platinum_default_sku_c,
        dev_to_prod_default_sku_c,
        forecast_category_name_c,
        forecast_category_name_nb_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        opportunity_name_append_c,
        opportunity_stage_c,
        opportunity_stage_nb_c,
        partner_sku_c,
        probability_c,
        probability_nb_c,
        renewal_campaign_id_c,
        renewal_campaign_member_status_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed

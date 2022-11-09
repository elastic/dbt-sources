
with source as (

    select * from {{ source('raw_salesforce', 'sfga_text_ad_c') }}

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
        owner_id,
        sfga_lead_c,
        sfga_opportunity_c,
        sfga_text_ad_description_1_c,
        sfga_text_ad_description_2_c,
        sfga_text_ad_destination_url_c,
        sfga_text_ad_display_url_c,
        system_modstamp,
        sfga_text_ad_id_c

    from source

)

select * from renamed

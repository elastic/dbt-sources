
with source as (

    select * from {{ source('raw_salesforce', 'sfga_google_campaign_c') }}

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
        sfga_google_campaign_description_c,
        sfga_lead_c,
        sfga_opportunity_c,
        system_modstamp,
        sfga_google_campaign_id_c

    from source

)

select * from renamed

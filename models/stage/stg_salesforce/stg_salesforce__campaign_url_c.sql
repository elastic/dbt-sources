
with source as (

    select * from {{ source('raw_salesforce', 'campaign_url_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        campaign_id_c,
        campaign_url_c,
        created_by_id,
        created_date,
        created_date_c,
        currency_iso_code,
        functional_team_c,
        is_deleted,
        landing_page_url_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp,
        tactic_sub_type_c,
        tactic_type_c,
        utm_campaign_c,
        utm_content_c,
        utm_id_c,
        utm_medium_c,
        utm_source_c,
        last_referenced_date,
        last_viewed_date

    from source

)

select * from renamed

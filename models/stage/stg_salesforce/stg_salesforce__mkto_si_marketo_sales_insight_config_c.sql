
with source as (

    select * from {{ source('raw_salesforce', 'mkto_si_marketo_sales_insight_config_c') }}

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
        last_referenced_date,
        last_viewed_date,
        mkto_si_api_secret_key_c,
        mkto_si_api_url_c,
        mkto_si_api_user_id_c,
        mkto_si_enable_marketo_api_c,
        mkto_si_enable_rss_c,
        mkto_si_marketo_host_c,
        mkto_si_test_configuration_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed

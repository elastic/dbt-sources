
with source as (

    select * from {{ source('raw_salesforce', 'mkto_si_grouped_web_activity_cache_c') }}

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
        mkto_si_account_link_c,
        mkto_si_account_link_name_c,
        mkto_si_city_c,
        mkto_si_contact_link_c,
        mkto_si_contact_link_name_c,
        mkto_si_country_c,
        mkto_si_id_c,
        mkto_si_is_anonymous_c,
        mkto_si_last_visit_dt_c,
        mkto_si_page_views_c,
        mkto_si_row_num_c,
        mkto_si_search_link_c,
        mkto_si_search_link_name_c,
        mkto_si_state_c,
        mkto_si_total_count_c,
        mkto_si_wpage_link_c,
        mkto_si_wpage_link_name_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed

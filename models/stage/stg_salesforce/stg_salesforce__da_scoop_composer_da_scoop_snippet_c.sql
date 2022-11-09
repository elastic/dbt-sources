
with source as (

    select * from {{ source('raw_salesforce', 'da_scoop_composer_da_scoop_snippet_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        da_scoop_composer_active_c,
        da_scoop_composer_description_c,
        da_scoop_composer_excluded_included_profiles_c,
        da_scoop_composer_profile_specific_results_c,
        da_scoop_composer_query_c,
        da_scoop_composer_sfdc_base_url_c,
        da_scoop_composer_test_the_scoop_composer_c,
        da_scoop_composer_view_order_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed

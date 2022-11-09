
with source as (

    select * from {{ source('raw_salesforce', 'ffirule_click_link_another_source_test_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffirule_atext_field_c,
        ffirule_click_link_source_line_item_test_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed

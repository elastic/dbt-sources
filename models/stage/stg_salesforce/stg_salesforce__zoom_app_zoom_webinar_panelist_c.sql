
with source as (

    select * from {{ source('raw_salesforce', 'zoom_app_zoom_webinar_panelist_c') }}

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
        system_modstamp,
        zoom_app_panelist_id_c,
        zoom_app_zoom_webinar_c,
        zoom_app_first_name_c,
        zoom_app_last_name_c,
        zoom_app_panelist_email_c,
        zoom_app_join_url_c

    from source

)

select * from renamed

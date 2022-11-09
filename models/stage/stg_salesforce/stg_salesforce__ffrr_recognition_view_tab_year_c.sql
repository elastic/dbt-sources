
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_recognition_view_tab_year_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_recognition_view_tab_c,
        ffrr_recognition_year_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed

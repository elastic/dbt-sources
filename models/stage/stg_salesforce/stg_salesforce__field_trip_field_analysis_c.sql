
with source as (

    select * from {{ source('raw_salesforce', 'field_trip_field_analysis_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        field_trip_label_c,
        field_trip_object_analysis_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed

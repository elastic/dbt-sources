
with source as (

    select * from {{ source('raw_docebo', 'sessions_additional_fields_view') }}

),

renamed as (

    select
        id_course,
        id_session,
        elastic_subsidiary,
        class_status,
        past_event_location,
        discount,
        lab_environment,
        class_language,
        localized_price,
        seo_title,
        modality,
        seo_description,
        visibility

    from source

)

select * from renamed

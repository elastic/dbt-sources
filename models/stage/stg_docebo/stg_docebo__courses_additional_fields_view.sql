
with source as (

    select * from {{ source('raw_docebo', 'courses_additional_fields_view') }}

),

renamed as (

    select
        id_course,
        elastic_price,
        subtitle,
        course_icon_url,
        audience,
        topics,
        prerequisites,
        requirements,
        course_group,
        download_outline,
        duration,
        sfdc_id,
        product_version,
        course_type,
        course_owner

    from source

)

select * from renamed

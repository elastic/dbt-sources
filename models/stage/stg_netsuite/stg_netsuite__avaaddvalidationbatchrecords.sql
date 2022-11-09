
with source as (

    select * from {{ source('raw_netsuite', 'avaaddvalidationbatchrecords') }}

),

renamed as (

    select
        address_id,
        address_type,
        avaaddvalidationbatchrecord_ex,
        avaaddvalidationbatchrecord_id,
        batch_id,
        date_created,
        error_message,
        is_inactive,
        last_modified_date,
        orig__city,
        orig__country,
        orig__line_1,
        orig__line_2,
        orig__line_3,
        orig__state,
        orig__zip,
        parent_id,
        record_id,
        record_name,
        record_type,
        validated_city,
        validated_country,
        validated_latitude,
        validated_line_1,
        validated_line_2,
        validated_line_3,
        validated_longitude,
        validated_state,
        validated_zip,
        validation_status

    from source

)

select * from renamed

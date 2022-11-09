
with source as (

    select * from {{ source('raw_netsuite', 'test_record_data_input_fields_map_history') }}

),

renamed as (

    select
        customization_id,
        test_record_id

    from source

)

select * from renamed

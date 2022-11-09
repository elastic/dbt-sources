
with source as (

    select * from {{ source('raw_netsuite_sa', 'test_record_data_input_form_map') }}

),

renamed as (

    select
        customization_id,
        test_record_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed

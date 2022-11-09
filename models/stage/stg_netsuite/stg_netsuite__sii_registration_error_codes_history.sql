
with source as (

    select * from {{ source('raw_netsuite', 'sii_registration_error_codes_history') }}

),

renamed as (

    select
        date_created,
        error_reason,
        is_dynamic,
        is_inactive,
        last_modified_date,
        parent_id,
        registration_status_id,
        sii_registration_error_code_ex,
        sii_registration_error_code_id,
        sii_registration_error_code_na

    from source

)

select * from renamed

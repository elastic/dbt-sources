
with source as (

    select * from {{ source('raw_netsuite_sa', 'sii_registration_error_codes') }}

),

renamed as (

    select
        sii_registration_error_code_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        error_reason,
        is_dynamic,
        is_inactive,
        last_modified_date,
        parent_id,
        registration_status_id,
        sii_registration_error_code_ex,
        sii_registration_error_code_na

    from source

)

select * from renamed

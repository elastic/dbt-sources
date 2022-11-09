
with source as (

    select * from {{ source('raw_netsuite', 'avacustomerexemptmapping') }}

),

renamed as (

    select
        avacustomerexemptmapping_extid,
        avacustomerexemptmapping_id,
        customer_id,
        date_created,
        exemption_certificate_no,
        is_inactive,
        last_modified_date,
        parent_id

    from source

)

select * from renamed


with source as (

    select * from {{ source('raw_netsuite_sa', 'avacustomerexemptmapping') }}

),

renamed as (

    select
        avacustomerexemptmapping_id,
        _fivetran_deleted,
        _fivetran_synced,
        avacustomerexemptmapping_extid,
        customer_id,
        date_created,
        date_deleted,
        exemption_certificate_no,
        is_inactive,
        last_modified_date,
        parent_id

    from source

)

select * from renamed

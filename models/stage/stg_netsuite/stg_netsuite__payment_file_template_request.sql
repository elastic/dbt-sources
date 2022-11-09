
with source as (

    select * from {{ source('raw_netsuite', 'payment_file_template_request') }}

),

renamed as (

    select
        date_created,
        is_inactive,
        last_modified_date,
        parent_id,
        payment_file_template_reque_ex,
        payment_file_template_reque_id,
        raw_request,
        raw_response,
        requester,
        status_id

    from source

)

select * from renamed

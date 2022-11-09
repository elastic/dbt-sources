
with source as (

    select * from {{ source('raw_netsuite_sa', 'payment_file_template_request_history') }}

),

renamed as (

    select
        payment_file_template_reque_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        payment_file_template_reque_ex,
        raw_request,
        raw_response,
        requester,
        status_id,
        partition_date

    from source

)

select * from renamed

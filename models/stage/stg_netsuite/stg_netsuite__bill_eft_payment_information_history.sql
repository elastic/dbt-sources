
with source as (

    select * from {{ source('raw_netsuite', 'bill_eft_payment_information_history') }}

),

renamed as (

    select
        batch_id,
        bill_eft_payment_informatio_ex,
        bill_eft_payment_informatio_id,
        date_created,
        eft_discount_amount,
        eft_file_id,
        eft_payment_amount,
        eft_payment_processed_id,
        is_inactive,
        last_modified_date,
        parent_id,
        reference_bill_id,
        reference_entity,
        reference_id,
        reference_line,
        reference_payment_id,
        script_deployment

    from source

)

select * from renamed

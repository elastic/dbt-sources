
with source as (

    select * from {{ source('raw_netsuite', 'bill_eft_details_history') }}

),

renamed as (

    select
        additions,
        bar_code,
        bill_eft_details_extid,
        bill_eft_details_id,
        date_created,
        delay_0,
        discount,
        inss_value,
        iof_value,
        ir_value,
        iss_value,
        is_inactive,
        last_modified_date,
        notice_to_payee,
        other_additions,
        other_deductions,
        parent_id,
        payer_warning,
        payment_file_format_id,
        penalty,
        rebate_detail_b,
        rebate_detail_j,
        reference_bill_id,
        service_type_compl,
        ted_compl_code,
        value_0

    from source

)

select * from renamed

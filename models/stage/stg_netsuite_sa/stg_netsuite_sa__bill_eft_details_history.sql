
with source as (

    select * from {{ source('raw_netsuite_sa', 'bill_eft_details_history') }}

),

renamed as (

    select
        bill_eft_details_id,
        _fivetran_deleted,
        _fivetran_synced,
        additions,
        bar_code,
        bill_eft_details_extid,
        date_created,
        date_deleted,
        delay_0,
        discount,
        inss_value,
        iof_value,
        ir_value,
        is_inactive,
        iss_value,
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
        value_0,
        partition_date

    from source

)

select * from renamed

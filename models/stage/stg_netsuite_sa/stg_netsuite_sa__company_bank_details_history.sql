
with source as (

    select * from {{ source('raw_netsuite_sa', 'company_bank_details_history') }}

),

renamed as (

    select
        company_bank_details_id,
        _fivetran_deleted,
        _fivetran_synced,
        accounts_payable_autoproces_id,
        approval_type_id,
        batch_number,
        class_id,
        company_bank_details_extid,
        company_bank_details_name,
        currency_id,
        date_created,
        date_deleted,
        dd_batch_enabled,
        dd_template_details_id,
        dd_template_id,
        department_id,
        eft_batch_enabled,
        eft_template_details_id,
        eft_template_fields,
        eft_template_id,
        file_cabinet_location,
        file_name_prefix,
        gl_bank_account_id,
        is_inactive,
        last_modified_date,
        legal_name,
        location_id,
        marked_by_default,
        parent_id,
        payment_limit,
        positive_pay_template_detai_id,
        positive_pay_template_id,
        print_company_name,
        show_summarized_data,
        subsidiary_id,
        zengin_bank_fee_schedule_id,
        file_cabinet_location_id,
        partition_date

    from source

)

select * from renamed

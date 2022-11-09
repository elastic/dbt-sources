
with source as (

    select * from {{ source('raw_netsuite_sa', 'bsp_csv_parser_configuration') }}

),

renamed as (

    select
        bsp_csv_parser_configuratio_id,
        _fivetran_deleted,
        _fivetran_synced,
        account_closing_balance,
        account_id,
        amount,
        amount_credit,
        amount_currency,
        amount_debit,
        amount_indicator,
        bsp_csv_parser_configuratio_ex,
        closing_balance_date,
        column_delimiter_id,
        configuration_id,
        date_0,
        date_created,
        date_deleted,
        date_format,
        entity_id,
        entity_name,
        financial_institution_id,
        inv_number,
        is_inactive,
        last_modified_date,
        memo,
        negative_number_format_id,
        number_format_id,
        parent_id,
        payee_or_payer,
        text_qualifier_id,
        transaction_credit_indicator,
        transaction_debit_indicator,
        transaction_number,
        transaction_type

    from source

)

select * from renamed

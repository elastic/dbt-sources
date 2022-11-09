
with source as (

    select * from {{ source('raw_netsuite_sa', 'posting_account_activity_pe') }}

),

renamed as (

    select
        _fivetran_id,
        _fivetran_id2,
        _fivetran_deleted,
        _fivetran_synced,
        account_id,
        accounting_book_id,
        accounting_period_id,
        activity_date,
        amount,
        amount_foreign,
        balance_from_subsidiary_id,
        class_id,
        date_deleted,
        department_id,
        entity_id,
        item_id,
        location_id,
        partner_id,
        promotion_code_id,
        quantity,
        sales_rep_id,
        subsidiary_id,
        fivetran_index

    from source

)

select * from renamed

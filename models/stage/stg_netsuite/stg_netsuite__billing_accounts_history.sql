
with source as (

    select * from {{ source('raw_netsuite', 'billing_accounts_history') }}

),

renamed as (

    select
        address_book_id,
        billing_account_extid,
        billing_account_id,
        billing_account_memo,
        billing_account_name,
        billing_account_number,
        billing_schedule_id,
        bill_to_address_book_id,
        class_id,
        currency_id,
        customer_id,
        date_created,
        date_last_actual_bill,
        date_last_bill_cycle,
        date_last_modified,
        date_next_bill_cycle,
        date_start,
        department_id,
        has_off_cycle_bill_request,
        is_customer_default,
        is_inactive,
        location_id,
        ship_to_address_book_id

    from source

)

select * from renamed

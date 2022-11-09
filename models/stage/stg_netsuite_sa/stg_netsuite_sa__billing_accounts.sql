
with source as (

    select * from {{ source('raw_netsuite_sa', 'billing_accounts') }}

),

renamed as (

    select
        billing_account_id,
        _fivetran_deleted,
        _fivetran_synced,
        address_book_id,
        bill_to_address_book_id,
        billing_account_extid,
        billing_account_memo,
        billing_account_name,
        billing_account_number,
        billing_schedule_id,
        class_id,
        currency_id,
        customer_id,
        date_created,
        date_deleted,
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

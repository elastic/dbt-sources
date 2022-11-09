
with source as (

    select * from {{ source('raw_netsuite_sa', 'subscription_change_orders_history') }}

),

renamed as (

    select
        change_order_id,
        _fivetran_deleted,
        _fivetran_synced,
        action_id,
        approval_status_id,
        change_order_extid,
        change_order_number,
        date_approval,
        date_created,
        date_deleted,
        date_effective,
        date_last_modified,
        date_new_end,
        date_renewal_start,
        memo,
        reactivation_option_id,
        renewal_method_id,
        renewal_price_book_id,
        renewal_subscription_plan_id,
        renewal_term_id,
        renewal_transaction_type,
        requester_id,
        status_id,
        subscription_id,
        modification_type,
        is_terminate_at_start_of_day,
        partition_date

    from source

)

select * from renamed

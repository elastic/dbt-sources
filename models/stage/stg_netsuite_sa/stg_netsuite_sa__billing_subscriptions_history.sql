
with source as (

    select * from {{ source('raw_netsuite_sa', 'billing_subscriptions_history') }}

),

renamed as (

    select
        subscription_id,
        _fivetran_deleted,
        _fivetran_synced,
        advance_renewal_period_number,
        advance_renewal_period_unit_id,
        amount,
        billing_account_id,
        currency,
        date_created,
        date_deleted,
        date_end,
        date_estimated_revrec_end,
        date_last_modified,
        date_start,
        default_renewal_method_id,
        default_renewal_plan_id,
        default_renewal_price_book_id,
        default_renewal_term_id,
        default_renewal_trantype_id,
        description,
        generate_modification_elements,
        initial_term_id,
        is_auto_renewal,
        is_sub_start_date_as_rsd,
        name,
        plan_id,
        price_book_id,
        sales_order_id,
        subscription_extid,
        subscription_number,
        subscription_revision,
        department_id,
        subscription_status,
        class_id,
        subsidiary_id,
        customer_id,
        location_id,
        partition_date

    from source

)

select * from renamed
